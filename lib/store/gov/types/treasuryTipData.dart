import 'package:json_annotation/json_annotation.dart';

part 'treasuryTipData.g.dart';

@JsonSerializable()
class TreasuryTipData extends _TreasuryTipData {
  static TreasuryTipData fromJson(Map<String, dynamic> json) =>
      _$TreasuryTipDataFromJson(json);
}

abstract class _TreasuryTipData {
  String hash;
  TreasuryTipDetailData detail;
}

@JsonSerializable()
class TreasuryTipDetailData extends _TreasuryTipDetailData {
  static TreasuryTipDetailData fromJson(Map<String, dynamic> json) =>
      _$TreasuryTipDetailDataFromJson(json);
}

abstract class _TreasuryTipDetailData {
  String reason;
  String who;
  TreasuryTipItemData finder;
  List<TreasuryTipItemData> tips;
}

@JsonSerializable()
class TreasuryTipItemData extends _TreasuryTipItemData {
  static TreasuryTipItemData fromJson(Map<String, dynamic> json) =>
      _$TreasuryTipItemDataFromJson(json);
}

abstract class _TreasuryTipItemData {
  String address;
  int value;
}
