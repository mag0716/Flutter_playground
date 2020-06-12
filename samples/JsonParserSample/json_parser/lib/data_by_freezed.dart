import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_by_freezed.freezed.dart';
part 'data_by_freezed.g.dart';

@freezed
abstract class DataByFreezed with _$DataByFreezed {
  const factory DataByFreezed(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title}) = _DataByFreezed;

  factory DataByFreezed.fromJson(Map<String, dynamic> json) =>
      _$DataByFreezedFromJson(json);
}
