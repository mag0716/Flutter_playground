import 'package:json_annotation/json_annotation.dart';

part 'data_by_json_serializable.g.dart';

@JsonSerializable()
class DataByJsonSerializable {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'title')
  final String title;

  DataByJsonSerializable({this.id, this.title});

  factory DataByJsonSerializable.fromJson(Map<String, dynamic> json) =>
      _$DataByJsonSerializable(json);

  Map<String, dynamic> toJson() => _$DataByJsonSerializableToJson(this);
}
