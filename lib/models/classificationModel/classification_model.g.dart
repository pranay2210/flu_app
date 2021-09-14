// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassificationResponse _$ClassificationResponseFromJson(
    Map<String, dynamic> json) {
  return ClassificationResponse(
    json['Status'] as String,
    json['Data'] as List,
  );
}

Map<String, dynamic> _$ClassificationResponseToJson(
        ClassificationResponse instance) =>
    <String, dynamic>{
      'Status': instance.Status,
      'Data': instance.Data,
    };
