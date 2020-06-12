import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_by_freezed.freezed.dart';

@freezed
abstract class DataByFreezed with _$DataByFreezed {
  const factory DataByFreezed({int id, String title}) = _DataByFreezed;
}
