// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'treasuryTipData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TreasuryTipData _$TreasuryTipDataFromJson(Map<String, dynamic> json) {
  return TreasuryTipData()
    ..hash = json['hash'] as String
    ..detail = json['detail'] == null
        ? null
        : TreasuryTipDetailData.fromJson(
            json['detail'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TreasuryTipDataToJson(TreasuryTipData instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'detail': instance.detail,
    };

TreasuryTipDetailData _$TreasuryTipDetailDataFromJson(
    Map<String, dynamic> json) {
  return TreasuryTipDetailData()
    ..reason = json['reason'] as String
    ..who = json['who'] as String
    ..finder = json['finder'] == null
        ? null
        : TreasuryTipItemData.fromJson(json['finder'] as Map<String, dynamic>)
    ..tips = (json['tips'] as List)
        ?.map((e) => e == null
            ? null
            : TreasuryTipItemData.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TreasuryTipDetailDataToJson(
        TreasuryTipDetailData instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'who': instance.who,
      'finder': instance.finder,
      'tips': instance.tips,
    };

TreasuryTipItemData _$TreasuryTipItemDataFromJson(Map<String, dynamic> json) {
  return TreasuryTipItemData()
    ..address = json['address'] as String
    ..value = json['value'] as int;
}

Map<String, dynamic> _$TreasuryTipItemDataToJson(
        TreasuryTipItemData instance) =>
    <String, dynamic>{
      'address': instance.address,
      'value': instance.value,
    };
