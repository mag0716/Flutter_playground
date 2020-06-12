// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_by_freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataByFreezed _$_$_DataByFreezedFromJson(Map<String, dynamic> json) {
  return _$_DataByFreezed(
    id: json['id'] as int,
    title: json['title'] as String,
    isEnabled: json['isEnabled'] as bool,
    values: (json['values'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$_$_DataByFreezedToJson(_$_DataByFreezed instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isEnabled': instance.isEnabled,
      'values': instance.values,
    };
