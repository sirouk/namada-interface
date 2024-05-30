import { atomWithMutation, atomWithQuery } from "jotai-tanstack-query";
import { atomFamily } from "jotai/utils";

import { ProposalStatus, ProposalTypeString, VoteType } from "@namada/types";
import { transparentAccountsAtom } from "slices/accounts";
import { chainAtom } from "slices/chain";
import {
  fetchAllProposals,
  fetchProposalById,
  fetchProposalVoted,
  fetchVotedProposalIds,
  performVote,
} from "./functions";

export const proposalFamily = atomFamily((id: bigint) =>
  atomWithQuery(() => ({
    queryKey: ["proposal", id.toString()],
    queryFn: () => fetchProposalById(id),
  }))
);

export const proposalVotedFamily = atomFamily((id: bigint) =>
  atomWithQuery((get) => ({
    queryKey: ["proposal-voted", id.toString()],
    queryFn: async () => {
      const [account] = get(transparentAccountsAtom);
      if (typeof account === "undefined") {
        throw new Error("no account found");
      }
      return await fetchProposalVoted(id, account);
    },
  }))
);

export const allProposalsAtom = atomWithQuery(() => ({
  queryKey: ["all-proposals"],
  queryFn: () => fetchAllProposals(),
}));

// TODO: this is a bad way to filter/search
export const allProposalsFamily = atomFamily(
  (options?: {
    status?: ProposalStatus;
    type?: ProposalTypeString;
    search?: string;
  }) =>
    atomWithQuery(() => ({
      queryKey: [
        "all-proposals",
        options?.status,
        options?.type,
        options?.search,
      ],
      queryFn: () => fetchAllProposals(),
    })),
  (a, b) =>
    a?.status === b?.status && a?.type === b?.type && a?.search === b?.search
);

export const votedProposalIdsAtom = atomWithQuery((get) => ({
  queryKey: ["voted-proposal-ids"],
  queryFn: async () => {
    const [account] = get(transparentAccountsAtom);
    if (typeof account === "undefined") {
      throw new Error("no account found");
    }
    return await fetchVotedProposalIds(get(chainAtom), account);
  },
}));

type PerformVoteArgs = {
  proposalId: bigint;
  vote: VoteType;
};
export const performVoteAtom = atomWithMutation((get) => {
  return {
    mutationKey: ["voting"],
    mutationFn: async ({ proposalId, vote }: PerformVoteArgs) => {
      const chain = get(chainAtom);
      const [account] = get(transparentAccountsAtom);

      if (typeof account === "undefined") {
        throw new Error("no account");
      }

      performVote(proposalId, vote, account, chain);
    },
  };
});
