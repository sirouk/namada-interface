import initWasm, { InitOutput } from "./shared/st";
import wasm from "./shared/st/shared_bg.wasm";

export const init: () => Promise<InitOutput> = async () => await initWasm(wasm);
