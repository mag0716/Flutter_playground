// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'data_by_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DataByFreezedTearOff {
  const _$DataByFreezedTearOff();

  _DataByFreezed call({int id, String title}) {
    return _DataByFreezed(
      id: id,
      title: title,
    );
  }
}

// ignore: unused_element
const $DataByFreezed = _$DataByFreezedTearOff();

mixin _$DataByFreezed {
  int get id;
  String get title;

  $DataByFreezedCopyWith<DataByFreezed> get copyWith;
}

abstract class $DataByFreezedCopyWith<$Res> {
  factory $DataByFreezedCopyWith(
          DataByFreezed value, $Res Function(DataByFreezed) then) =
      _$DataByFreezedCopyWithImpl<$Res>;
  $Res call({int id, String title});
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
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

abstract class _$DataByFreezedCopyWith<$Res>
    implements $DataByFreezedCopyWith<$Res> {
  factory _$DataByFreezedCopyWith(
          _DataByFreezed value, $Res Function(_DataByFreezed) then) =
      __$DataByFreezedCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title});
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
  }) {
    return _then(_DataByFreezed(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

class _$_DataByFreezed implements _DataByFreezed {
  const _$_DataByFreezed({this.id, this.title});

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'DataByFreezed(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataByFreezed &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title);

  @override
  _$DataByFreezedCopyWith<_DataByFreezed> get copyWith =>
      __$DataByFreezedCopyWithImpl<_DataByFreezed>(this, _$identity);
}

abstract class _DataByFreezed implements DataByFreezed {
  const factory _DataByFreezed({int id, String title}) = _$_DataByFreezed;

  @override
  int get id;
  @override
  String get title;
  @override
  _$DataByFreezedCopyWith<_DataByFreezed> get copyWith;
}
