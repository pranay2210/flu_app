// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stone_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoneDetails _$StoneDetailsFromJson(Map<String, dynamic> json) {
  return StoneDetails()
    ..stoneID = json['stoneID']
    ..stoneERPKey = json['stoneERPKey']
    ..stoneType = json['stoneType']
    ..stoneCode = json['stoneCode'];
}

Map<String, dynamic> _$StoneDetailsToJson(StoneDetails instance) =>
    <String, dynamic>{
      'stoneID': instance.stoneID,
      'stoneERPKey': instance.stoneERPKey,
      'stoneType': instance.stoneType,
      'stoneCode': instance.stoneCode,
    };
