use crate::{rpc_client::HttpClient, sdk::masp::WebShieldedUtils};
use js_sys::Uint8Array;
use namada::ledger::{
    masp::ShieldedContext,
    wallet::{Store, Wallet},
};
use wasm_bindgen::{prelude::wasm_bindgen, JsError, JsValue};

mod masp;
mod tx;
mod wallet;

#[cfg(feature = "parallel")]
mod implementation {
    use crossbeam_channel::{bounded, unbounded, Receiver, Sender};
    use rayon::prelude::*;
    use wasm_bindgen::{prelude::wasm_bindgen, JsError, JsValue};

    #[wasm_bindgen]
    pub fn rayon_test() {
        let (ss, rr) = bounded(1);
        let (ss2, rr2) = bounded(1);
        let (ss3, rr3) = bounded(1);
        let (ss4, rr4) = bounded(1);
        let (ss5, rr5) = bounded(1);
        let (ss6, rr6) = bounded(1);
        let (ss7, rr7) = bounded(1);
        let (ss8, rr8) = bounded(1);

        rayon::spawn(move || {
            for n in 1..11111111 {}
            ss.send(5).unwrap();
            drop(ss);
        });

        rayon::spawn(move || {
            for n in 1..11111111 {}
            ss2.send(15).unwrap();
            drop(ss2);
        });

        rayon::spawn(move || {
            for n in 1..11111 {}
            ss3.send(25).unwrap();
            drop(ss3);
        });

        rayon::spawn(move || {
            for n in 1..11111 {}
            ss4.send(25).unwrap();
            drop(ss4);
        });

        rayon::spawn(move || {
            for n in 1..11111 {}
            ss5.send(25).unwrap();
            drop(ss5);
        });

        rayon::spawn(move || {
            for n in 1..11111 {}
            ss6.send(25).unwrap();
            drop(ss6);
        });

        rayon::spawn(move || {
            for n in 1..11111 {}
            ss7.send(25).unwrap();
            drop(ss7);
        });

        rayon::spawn(move || {
            for n in 1..11111 {}
            ss8.send(25).unwrap();
            drop(ss8);
        });

        let rr = rr.recv().unwrap();
        let rr2 = rr2.recv().unwrap();
        let rr3 = rr3.recv().unwrap();
        let rr4 = rr4.recv().unwrap();
        let rr5 = rr5.recv().unwrap();
        let rr6 = rr6.recv().unwrap();
        let rr7 = rr7.recv().unwrap();
        let rr8 = rr8.recv().unwrap();
        web_sys::console::log_1(
            &format!(
                "r1 {}, r2 {}, r3 {}, r4 {}, r5 {}, r6 {}, r7 {}, r8 {}",
                rr, rr2, rr3, rr4, rr5, rr6, rr7, rr8
            )
            .into(),
        );
    }
}

#[wasm_bindgen]
pub struct Sdk {
    client: HttpClient,
    wallet: Wallet<wallet::WalletUtils>,
    shielded_ctx: ShieldedContext<masp::WebShieldedUtils>,
}

#[wasm_bindgen]
impl Sdk {
    #[wasm_bindgen(constructor)]
    pub fn new(url: String) -> Self {
        console_error_panic_hook::set_once();
        Sdk {
            client: HttpClient::new(url),
            wallet: Wallet::new(wallet::STORAGE_PATH.to_owned(), Store::default()),
            // TODO: Probably makes sense to override default to handle cases when params are not
            // yet loaded
            shielded_ctx: ShieldedContext::default(),
        }
    }

    //TODO: move to utils
    fn to_bytes(u_int_8_array: JsValue) -> Vec<u8> {
        let array = Uint8Array::new(&u_int_8_array);
        array.to_vec()
    }

    pub async fn fetch_masp_params(&mut self) -> Result<(), JsValue> {
        let spend = fetch_and_store("masp-spend.params").await?;
        let output = fetch_and_store("masp-output.params").await?;
        let convert = fetch_and_store("masp-convert.params").await?;

        self.shielded_ctx = WebShieldedUtils::new(
            Self::to_bytes(spend),
            Self::to_bytes(output),
            Self::to_bytes(convert),
        );

        Ok(())
    }

    pub fn encode(&self) -> Vec<u8> {
        wallet::encode(&self.wallet)
    }

    pub fn decode(&mut self, data: Vec<u8>) -> Result<(), JsError> {
        let wallet = wallet::decode(data)?;
        self.wallet = wallet;
        Ok(())
    }

    pub fn add_key(&mut self, private_key: &str, password: Option<String>, alias: Option<String>) {
        wallet::add_key(&mut self.wallet, private_key, password, alias)
    }

    pub fn add_spending_key(&mut self, xsk: &[u8], password: Option<String>, alias: &str) {
        wallet::add_spending_key(&mut self.wallet, xsk, password, alias)
    }

    pub async fn submit_bond(
        &mut self,
        tx_msg: &[u8],
        password: Option<String>,
    ) -> Result<(), JsError> {
        let args = tx::bond_tx_args(tx_msg, password)?;

        namada::ledger::tx::submit_bond(&mut self.client, &mut self.wallet, args)
            .await
            .map_err(|e| JsError::from(e))
    }

    pub async fn submit_unbond(
        &mut self,
        tx_msg: &[u8],
        password: Option<String>,
    ) -> Result<(), JsError> {
        let args = tx::unbond_tx_args(tx_msg, password)?;

        namada::ledger::tx::submit_unbond(&mut self.client, &mut self.wallet, args)
            .await
            .map_err(|e| JsError::from(e))
    }

    pub async fn submit_transfer(
        &mut self,
        tx_msg: &[u8],
        password: Option<String>,
    ) -> Result<(), JsError> {
        let args = tx::transfer_tx_args(tx_msg, password)?;

        namada::ledger::tx::submit_transfer(
            &self.client,
            &mut self.wallet,
            &mut self.shielded_ctx,
            args,
        )
        .await
        .map_err(|e| JsError::from(e))
    }

    pub async fn submit_ibc_transfer(
        &mut self,
        tx_msg: &[u8],
        password: Option<String>,
    ) -> Result<(), JsError> {
        let args = tx::ibc_transfer_tx_args(tx_msg, password)?;

        namada::ledger::tx::submit_ibc_transfer(&self.client, &mut self.wallet, args)
            .await
            .map_err(|e| JsError::from(e))
    }
}

#[wasm_bindgen(module = "/src/sdk/mod.js")]
extern "C" {
    #[wasm_bindgen(catch, js_name = "fetchAndStore")]
    async fn fetch_and_store(params: &str) -> Result<JsValue, JsValue>;
}
