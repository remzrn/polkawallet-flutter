import 'package:json_annotation/json_annotation.dart';

part 'treasuryOverviewData.g.dart';

@JsonSerializable()
class TreasuryOverviewData extends _TreasuryOverviewData {
  static TreasuryOverviewData fromJson(Map<String, dynamic> json) =>
      _$TreasuryOverviewDataFromJson(json);
}

abstract class _TreasuryOverviewData {
  String balance;
  int proposalCount;
  List<MoneyProposalData> proposals;
  List<MoneyProposalData> approvals;
}

@JsonSerializable()
class MoneyProposalData extends _MoneyProposalData {
  static MoneyProposalData fromJson(Map<String, dynamic> json) =>
      _$MoneyProposalDataFromJson(json);
}

abstract class _MoneyProposalData {
  int id;
  MoneyProposalDetailData proposal;
}

@JsonSerializable()
class MoneyProposalDetailData extends _MoneyProposalDetailData {
  static MoneyProposalDetailData fromJson(Map<String, dynamic> json) =>
      _$MoneyProposalDetailDataFromJson(json);
}

abstract class _MoneyProposalDetailData {
  String proposer;
  String beneficiary;
  int value;
  int bond;
}
