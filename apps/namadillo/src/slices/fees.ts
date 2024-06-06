import { DefaultApi } from "@anomaorg/namada-indexer-client";
import BigNumber from "bignumber.js";
import invariant from "invariant";
import { atom } from "jotai";
import { atomWithQuery } from "jotai-tanstack-query";
import { accountsAtom } from "slices/accounts";
import { chainAtom } from "slices/chain";

// TODO: remove harcoding of gas limit
export const GAS_LIMIT = new BigNumber(20_000);

const {
  NAMADA_INTERFACE_NAMADA_TOKEN:
    nativeToken = "tnam1qxgfw7myv4dh0qna4hq0xdg6lx77fzl7dcem8h7e",
} = process.env;

export const minimumGasPriceAtom = atomWithQuery<BigNumber>((get) => {
  const chain = get(chainAtom);
  return {
    queryKey: ["minimum-gas-price-" + chain.chainId],
    queryFn: async () => {
      const api = new DefaultApi();
      const gasTableResponse = await api.apiV1GasTableGet();

      // TODO: Can nativeToken ever be undefined?
      invariant(!!nativeToken, "Native token is undefined");
      const nativeTokenCost = gasTableResponse.data.find(
        ({ tokenAddress }) => tokenAddress === nativeToken
      );
      invariant(!!nativeTokenCost, "Error querying minimum gas price");
      const asBigNumber = new BigNumber(nativeTokenCost.amount);
      invariant(
        !asBigNumber.isNaN(),
        "Error converting minimum gas price to BigNumber"
      );

      return asBigNumber;
    },
  };
});

export const isRevealPkNeededAtom = (() => {
  type RevealPkNeededMap = { [address: string]: boolean };

  const base = atom(new Promise<RevealPkNeededMap>(() => {}));

  return atom(
    async (get) => {
      const map = await get(base);

      return (address: string): boolean => {
        if (!(address in map)) {
          throw new Error("address not found in public key map");
        }
        return map[address];
      };
    },
    (get, set) =>
      set(
        base,
        (async (): Promise<RevealPkNeededMap> => {
          const api = new DefaultApi();
          const accounts = get(accountsAtom);
          const transparentAccounts = accounts.filter(
            (account) => !account.isShielded
          );

          const entries = await Promise.all(
            transparentAccounts.map(async ({ address }) => {
              const { publicKey } = (
                await api.apiV1RevealedPublicKeyAddressGet(address)
              ).data;

              return [address, !publicKey];
            })
          );

          return Object.fromEntries(entries);
        })()
      )
  );
})();
