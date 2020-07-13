import { GenericCall, getTypeDef } from "@polkadot/types";
import {
  formatBalance,
  stringToU8a,
  BN_ZERO,
  hexToString,
} from "@polkadot/util";

import { approxChanges } from "../utils/referendumApproxChanges";

function _extractMetaData(value) {
  const params = GenericCall.filterOrigin(value).map(({ name, type }) => ({
    name: name.toString(),
    type: getTypeDef(type.toString()),
  }));
  const values = value.args.map((value) => ({
    isValid: true,
    value,
  }));
  const hash = value.hash;
  return { hash, params, values };
}

async function fetchReferendums(address) {
  const referendums = await api.derive.democracy.referendums();
  const sqrtElectorate = await api.derive.democracy.sqrtElectorate();
  const details = referendums.map(
    ({ image, status, votedAye, votedNay, votedTotal, votes }) => {
      if (!image.proposal) {
        return {};
      }
      const callData = api.registry.findMetaCall(image.proposal.callIndex);
      const parsedMeta = _extractMetaData(callData.meta);
      image.proposal = image.proposal.toHuman();
      if (image.proposal.method == "setCode") {
        const args = image.proposal.args;
        image.proposal.args = [
          args[0].slice(0, 16) + "..." + args[0].slice(args[0].length - 16),
        ];
      }

      const changes = approxChanges(status.threshold, sqrtElectorate, {
        votedAye,
        votedNay,
        votedTotal,
      });

      const voted = votes.find((i) => i.accountId.toString() == address);
      const userVoted = voted
        ? {
            balance: voted.balance,
            vote: voted.vote.toHuman(),
          }
        : null;
      return {
        title: `${callData.section}.${callData.method}`,
        content: callData.meta?.documentation.join(" "),
        changes: {
          changeAye: changes.changeAye.toString(),
          changeNay: changes.changeNay.toString(),
        },
        userVoted,
        ...parsedMeta,
      };
    }
  );
  return { referendums, details };
}

async function fetchCouncilVotes() {
  const councilVotes = await api.derive.council.votes();
  return councilVotes.reduce((result, [voter, { stake, votes }]) => {
    votes.forEach((candidate) => {
      const address = candidate.toString();
      if (!result[address]) {
        result[address] = {};
      }
      result[address][voter] = stake;
    });
    return result;
  }, {});
}

const TREASURY_ACCOUNT = stringToU8a("modlpy/trsry".padEnd(32, "\0"));

async function getTreasuryOverview() {
  const proposals = await api.derive.treasury.proposals();
  const balance = await api.derive.balances.account(TREASURY_ACCOUNT);
  proposals.balance = formatBalance(balance.freeBalance, {
    forceUnit: "-",
    withSi: false,
  }).split(".")[0];
  return proposals;
}

async function getTreasuryTips() {
  const tipKeys = await api.query.treasury.tips.keys();
  const tipHashes = tipKeys.map((key) => key.args[0].toHex());
  const optTips = await api.query.treasury.tips.multi(tipHashes);
  const tips = optTips
    .map((opt, index) => [tipHashes[index], opt.unwrapOr(null)])
    .filter((val) => !!val[1])
    .sort((a, b) =>
      a[1].closes.unwrapOr(BN_ZERO).cmp(b[1].closes.unwrapOr(BN_ZERO))
    );
  return Promise.all(
    tips.map(async (tip) => {
      const detail = tip[1].toJSON();
      const finder =
        detail.finder != null
          ? {
              address: detail.finder[0],
              value: detail.finder[1],
            }
          : null;
      const reason = await api.query.treasury.reasons(detail.reason);
      const tips = detail.tips.map((e) => ({ address: e[0], value: e[1] }));
      return {
        hash: tip[0],
        ...detail,
        finder,
        reason: reason.isSome ? hexToString(reason.unwrap().toHex()) : null,
        tips,
      };
    })
  );
}

export default {
  fetchReferendums,
  fetchCouncilVotes,
  getTreasuryOverview,
  getTreasuryTips,
};
