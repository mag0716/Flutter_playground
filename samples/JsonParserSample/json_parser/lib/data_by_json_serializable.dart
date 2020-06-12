import 'package:json_annotation/json_annotation.dart';

part 'data_by_json_serializable.g.dart';

@JsonSerializable()
class DataByJsonSerializable {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'isEnabled')
  final bool isEnabled;
  @JsonKey(name: 'values')
  final List<int> values;

  DataByJsonSerializable({this.id, this.title, this.isEnabled, this.values});

  factory DataByJsonSerializable.fromJson(Map<String, dynamic> json) =>
      _$DataByJsonSerializableFromJson(json);

  Map<String, dynamic> toJson() => _$DataByJsonSerializableToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
