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
  List<SpendProposalData> proposals;
  List<SpendProposalData> approvals;
}

@JsonSerializable()
class SpendProposalData extends _SpendProposalData {
  static SpendProposalData fromJson(Map<String, dynamic> json) =>
      _$SpendProposalDataFromJson(json);
}

abstract class _SpendProposalData {
  int id;
  bool isApproval;
  List<SpendProposalCouncilData> council;
  SpendProposalDetailData proposal;
}

@JsonSerializable()
class SpendProposalCouncilData extends _SpendProposalCouncilData {
  static SpendProposalCouncilData fromJson(Map<String, dynamic> json) =>
      _$SpendProposalCouncilDataFromJson(json);
}

abstract class _SpendProposalCouncilData {
  String hash;
  CouncilProposalData proposal;
  CouncilProposalVotesData votes;
}

@JsonSerializable()
class CouncilProposalData extends _CouncilProposalData {
  static CouncilProposalData fromJson(Map<String, dynamic> json) =>
      _$CouncilProposalDataFromJson(json);
}

abstract class _CouncilProposalData {
  String callIndex;
  Map args;
}

@JsonSerializable()
class CouncilProposalVotesData extends _CouncilProposalVotesData {
  static CouncilProposalVotesData fromJson(Map<String, dynamic> json) =>
      _$CouncilProposalVotesDataFromJson(json);
}

abstract class _CouncilProposalVotesData {
  int index;
  int threshold;
  List<String> ayes;
  List<String> nays;
  int end;
}

@JsonSerializable()
class SpendProposalDetailData extends _SpendProposalDetailData {
  static SpendProposalDetailData fromJson(Map<String, dynamic> json) =>
      _$SpendProposalDetailDataFromJson(json);
}

abstract class _SpendProposalDetailData {
  String proposer;
  String beneficiary;
  int value;
  int bond;
}
