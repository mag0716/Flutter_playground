import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'data_by_built_value.g.dart';

abstract class DataByBuiltValue
    implements Built<DataByBuiltValue, DataByBuiltValueBuilder> {
  static Serializer<DataByBuiltValue> get serializer =>
      _$dataByBuiltValueSerializer;

  @BuiltValueField(wireName: 'id')
  int get id;

  @BuiltValueField(wireName: 'title')
  String get title;

  DataByBuiltValue._();

  factory DataByBuiltValue([void Function(DataByBuiltValueBuilder) updates]) =
      _$DataByBuiltValue;
}
