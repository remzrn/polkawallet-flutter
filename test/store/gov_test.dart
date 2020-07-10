import 'package:flutter_test/flutter_test.dart';
import 'package:polka_wallet/store/app.dart';
import 'package:polka_wallet/store/gov/governance.dart';
import 'package:polka_wallet/store/gov/types/treasuryOverviewData.dart';

import 'localStorage_mock.dart';
import 'mock/mockTreasuryData.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('GovernanceStore test', () {
    final AppStore root = AppStore();
    root.localStorage = getMockLocalStorage();
    final store = GovernanceStore(root);

    test('gov store created', () {
      expect(store.cacheCouncilKey, 'council');
    });
    test('set treasury overview properly', () {
      store.setTreasuryOverview(treasuryOverview);
      expect(store.treasuryOverview.balance, treasuryBalance);
      expect(store.treasuryOverview.proposalCount, treasuryCount);
      expect(store.treasuryOverview.proposals.length, 0);
      expect(store.treasuryOverview.approvals.length, 3);
      expect(store.treasuryOverview.approvals[0].id, 33);
      final MoneyProposalDetailData proposal =
          store.treasuryOverview.approvals[0].proposal;
      expect(proposal.value, treasuryProposal33['value']);
      expect(proposal.bond, treasuryProposal33['bond']);
      expect(proposal.proposer, treasuryProposal33['proposer']);
      expect(proposal.beneficiary, treasuryProposal33['beneficiary']);
    });
    test('set treasury tips properly', () {
      final List tips = [tip0x58, tip0xf2];
      store.setTreasuryTips(tips);
      expect(store.treasuryTips.length, 2);
      expect(store.treasuryTips[0].hash, tip0x58['hash']);
      expect(store.treasuryTips[0].detail.who, tip0x58['detail']['who']);
      expect(store.treasuryTips[0].detail.reason, tip0x58['detail']['reason']);
      expect(store.treasuryTips[0].detail.finder.address,
          tip0x58['detail']['finder']['address']);
      expect(store.treasuryTips[0].detail.finder.value,
          tip0x58['detail']['finder']['value']);
      expect(store.treasuryTips[0].detail.tips.length,
          List.of(tip0x58['detail']['tips']).length);
      expect(store.treasuryTips[0].detail.tips[0].value,
          List.of(tip0x58['detail']['tips'])[0]['value']);
      expect(store.treasuryTips[0].detail.tips[0].address,
          List.of(tip0x58['detail']['tips'])[0]['address']);
    });
  });
}
