// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_by_built_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DataByBuiltValue> _$dataByBuiltValueSerializer =
    new _$DataByBuiltValueSerializer();

class _$DataByBuiltValueSerializer
    implements StructuredSerializer<DataByBuiltValue> {
  @override
  final Iterable<Type> types = const [DataByBuiltValue, _$DataByBuiltValue];
  @override
  final String wireName = 'DataByBuiltValue';

  @override
  Iterable<Object> serialize(Serializers serializers, DataByBuiltValue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'isEnabled',
      serializers.serialize(object.isEnabled,
          specifiedType: const FullType(bool)),
      'values',
      serializers.serialize(object.values,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
    ];

    return result;
  }

  @override
  DataByBuiltValue deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataByBuiltValueBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isEnabled':
          result.isEnabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'values':
          result.values.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$DataByBuiltValue extends DataByBuiltValue {
  @override
  final int id;
  @override
  final String title;
  @override
  final bool isEnabled;
  @override
  final BuiltList<int> values;

  factory _$DataByBuiltValue(
          [void Function(DataByBuiltValueBuilder) updates]) =>
      (new DataByBuiltValueBuilder()..update(updates)).build();

  _$DataByBuiltValue._({this.id, this.title, this.isEnabled, this.values})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('DataByBuiltValue', 'id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('DataByBuiltValue', 'title');
    }
    if (isEnabled == null) {
      throw new BuiltValueNullFieldError('DataByBuiltValue', 'isEnabled');
    }
    if (values == null) {
      throw new BuiltValueNullFieldError('DataByBuiltValue', 'values');
    }
  }

  @override
  DataByBuiltValue rebuild(void Function(DataByBuiltValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataByBuiltValueBuilder toBuilder() =>
      new DataByBuiltValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataByBuiltValue &&
        id == other.id &&
        title == other.title &&
        isEnabled == other.isEnabled &&
        values == other.values;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), title.hashCode), isEnabled.hashCode),
        values.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataByBuiltValue')
          ..add('id', id)
          ..add('title', title)
          ..add('isEnabled', isEnabled)
          ..add('values', values))
        .toString();
  }
}

class DataByBuiltValueBuilder
    implements Builder<DataByBuiltValue, DataByBuiltValueBuilder> {
  _$DataByBuiltValue _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  bool _isEnabled;
  bool get isEnabled => _$this._isEnabled;
  set isEnabled(bool isEnabled) => _$this._isEnabled = isEnabled;

  ListBuilder<int> _values;
  ListBuilder<int> get values => _$this._values ??= new ListBuilder<int>();
  set values(ListBuilder<int> values) => _$this._values = values;

  DataByBuiltValueBuilder();

  DataByBuiltValueBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _isEnabled = _$v.isEnabled;
      _values = _$v.values?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataByBuiltValue other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DataByBuiltValue;
  }

  @override
  void update(void Function(DataByBuiltValueBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataByBuiltValue build() {
    _$DataByBuiltValue _$result;
    try {
      _$result = _$v ??
          new _$DataByBuiltValue._(
              id: id,
              title: title,
              isEnabled: isEnabled,
              values: values.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'values';
        values.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataByBuiltValue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
