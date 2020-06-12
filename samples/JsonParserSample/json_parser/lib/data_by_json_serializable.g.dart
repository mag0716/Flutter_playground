// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_by_json_serializable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataByJsonSerializable _$DataByJsonSerializableFromJson(
    Map<String, dynamic> json) {
  return DataByJsonSerializable(
    id: json['id'] as int,
    title: json['title'] as String,
    isEnabled: json['isEnabled'] as bool,
    values: (json['values'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$DataByJsonSerializableToJson(
        DataByJsonSerializable instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isEnabled': instance.isEnabled,
      'values': instance.values,
    };
