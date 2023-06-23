import {
  INIT_MSG,
  Msg,
  SubmitTransferMessageData,
  TRANSFER_FAILED_MSG,
  TRANSFER_SUCCESSFUL_MSG,
} from "./types";

export const init = (
  data: SubmitTransferMessageData,
  transferCompletedHandler: (msgId: string, success: boolean) => Promise<void>
): void => {
  const w = new Worker("submit-transfer-web-worker.anoma.js");

  w.onmessage = (e: MessageEvent<{ msg: Msg; data: unknown }>) => {
    if (e.data.msg === INIT_MSG) {
      w.postMessage(data);
    } else if (e.data.msg === TRANSFER_SUCCESSFUL_MSG) {
      transferCompletedHandler(data.msgId, true).then(() => w.terminate());
    } else if (e.data.msg === TRANSFER_FAILED_MSG) {
      console.error(e.data.data);
      transferCompletedHandler(data.msgId, false).then(() => w.terminate());
    } else {
      console.warn("Not supporeted msg type.");
    }
  };
};
