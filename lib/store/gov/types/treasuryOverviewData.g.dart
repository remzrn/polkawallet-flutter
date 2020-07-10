// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'treasuryOverviewData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TreasuryOverviewData _$TreasuryOverviewDataFromJson(Map<String, dynamic> json) {
  return TreasuryOverviewData()
    ..balance = json['balance'] as String
    ..proposalCount = json['proposalCount'] as int
    ..proposals = (json['proposals'] as List)
        ?.map((e) => e == null
            ? null
            : MoneyProposalData.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..approvals = (json['approvals'] as List)
        ?.map((e) => e == null
            ? null
            : MoneyProposalData.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TreasuryOverviewDataToJson(
        TreasuryOverviewData instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'proposalCount': instance.proposalCount,
      'proposals': instance.proposals,
      'approvals': instance.approvals,
    };

MoneyProposalData _$MoneyProposalDataFromJson(Map<String, dynamic> json) {
  return MoneyProposalData()
    ..id = json['id'] as int
    ..proposal = json['proposal'] == null
        ? null
        : MoneyProposalDetailData.fromJson(
            json['proposal'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MoneyProposalDataToJson(MoneyProposalData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'proposal': instance.proposal,
    };

MoneyProposalDetailData _$MoneyProposalDetailDataFromJson(
    Map<String, dynamic> json) {
  return MoneyProposalDetailData()
    ..proposer = json['proposer'] as String
    ..beneficiary = json['beneficiary'] as String
    ..value = json['value'] as int
    ..bond = json['bond'] as int;
}

Map<String, dynamic> _$MoneyProposalDetailDataToJson(
        MoneyProposalDetailData instance) =>
    <String, dynamic>{
      'proposer': instance.proposer,
      'beneficiary': instance.beneficiary,
      'value': instance.value,
      'bond': instance.bond,
    };
