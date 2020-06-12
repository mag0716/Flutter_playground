// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'data_by_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DataByFreezed _$DataByFreezedFromJson(Map<String, dynamic> json) {
  return _DataByFreezed.fromJson(json);
}

class _$DataByFreezedTearOff {
  const _$DataByFreezedTearOff();

  _DataByFreezed call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'isEnabled') bool isEnabled,
      @JsonKey(name: 'values') List<int> values}) {
    return _DataByFreezed(
      id: id,
      title: title,
      isEnabled: isEnabled,
      values: values,
    );
  }
}

// ignore: unused_element
const $DataByFreezed = _$DataByFreezedTearOff();

mixin _$DataByFreezed {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'isEnabled')
  bool get isEnabled;
  @JsonKey(name: 'values')
  List<int> get values;

  Map<String, dynamic> toJson();
  $DataByFreezedCopyWith<DataByFreezed> get copyWith;
}

abstract class $DataByFreezedCopyWith<$Res> {
  factory $DataByFreezedCopyWith(
          DataByFreezed value, $Res Function(DataByFreezed) then) =
      _$DataByFreezedCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'isEnabled') bool isEnabled,
      @JsonKey(name: 'values') List<int> values});
}

class _$DataByFreezedCopyWithImpl<$Res>
    implements $DataByFreezedCopyWith<$Res> {
  _$DataByFreezedCopyWithImpl(this._value, this._then);

  final DataByFreezed _value;
  // ignore: unused_field
  final $Res Function(DataByFreezed) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object isEnabled = freezed,
    Object values = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      isEnabled: isEnabled == freezed ? _value.isEnabled : isEnabled as bool,
      values: values == freezed ? _value.values : values as List<int>,
    ));
  }
}

abstract class _$DataByFreezedCopyWith<$Res>
    implements $DataByFreezedCopyWith<$Res> {
  factory _$DataByFreezedCopyWith(
          _DataByFreezed value, $Res Function(_DataByFreezed) then) =
      __$DataByFreezedCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'isEnabled') bool isEnabled,
      @JsonKey(name: 'values') List<int> values});
}

class __$DataByFreezedCopyWithImpl<$Res>
    extends _$DataByFreezedCopyWithImpl<$Res>
    implements _$DataByFreezedCopyWith<$Res> {
  __$DataByFreezedCopyWithImpl(
      _DataByFreezed _value, $Res Function(_DataByFreezed) _then)
      : super(_value, (v) => _then(v as _DataByFreezed));

  @override
  _DataByFreezed get _value => super._value as _DataByFreezed;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object isEnabled = freezed,
    Object values = freezed,
  }) {
    return _then(_DataByFreezed(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      isEnabled: isEnabled == freezed ? _value.isEnabled : isEnabled as bool,
      values: values == freezed ? _value.values : values as List<int>,
    ));
  }
}

@JsonSerializable()
class _$_DataByFreezed implements _DataByFreezed {
  const _$_DataByFreezed(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'isEnabled') this.isEnabled,
      @JsonKey(name: 'values') this.values});

  factory _$_DataByFreezed.fromJson(Map<String, dynamic> json) =>
      _$_$_DataByFreezedFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'isEnabled')
  final bool isEnabled;
  @override
  @JsonKey(name: 'values')
  final List<int> values;

  @override
  String toString() {
    return 'DataByFreezed(id: $id, title: $title, isEnabled: $isEnabled, values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataByFreezed &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.isEnabled, isEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.isEnabled, isEnabled)) &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(isEnabled) ^
      const DeepCollectionEquality().hash(values);

  @override
  _$DataByFreezedCopyWith<_DataByFreezed> get copyWith =>
      __$DataByFreezedCopyWithImpl<_DataByFreezed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DataByFreezedToJson(this);
  }
}

abstract class _DataByFreezed implements DataByFreezed {
  const factory _DataByFreezed(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'isEnabled') bool isEnabled,
      @JsonKey(name: 'values') List<int> values}) = _$_DataByFreezed;

  factory _DataByFreezed.fromJson(Map<String, dynamic> json) =
      _$_DataByFreezed.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'isEnabled')
  bool get isEnabled;
  @override
  @JsonKey(name: 'values')
  List<int> get values;
  @override
  _$DataByFreezedCopyWith<_DataByFreezed> get copyWith;
}
