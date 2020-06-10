import 'package:built_value/serializer.dart';
import 'package:jsonparser/data_by_built_value.dart';

part 'serializers.g.dart';

@SerializersFor([
  DataByBuiltValue
])
final Serializers serializers = _$serializers;