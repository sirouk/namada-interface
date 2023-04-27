import wasm from "./shared/mt/shared_bg.wasm";

import initWasm, { initThreadPool, InitOutput } from "./shared/mt";

export const init: () => Promise<InitOutput> = async () => {
  const output = await initWasm(wasm);
  await initThreadPool(navigator.hardwareConcurrency);
  return output;
};
