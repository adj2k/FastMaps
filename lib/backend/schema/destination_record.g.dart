// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DestinationRecord> _$destinationRecordSerializer =
    new _$DestinationRecordSerializer();

class _$DestinationRecordSerializer
    implements StructuredSerializer<DestinationRecord> {
  @override
  final Iterable<Type> types = const [DestinationRecord, _$DestinationRecord];
  @override
  final String wireName = 'DestinationRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, DestinationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.finalLocation;
    if (value != null) {
      result
        ..add('FinalLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  DestinationRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DestinationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'FinalLocation':
          result.finalLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$DestinationRecord extends DestinationRecord {
  @override
  final LatLng finalLocation;
  @override
  final DocumentReference<Object> reference;

  factory _$DestinationRecord(
          [void Function(DestinationRecordBuilder) updates]) =>
      (new DestinationRecordBuilder()..update(updates))._build();

  _$DestinationRecord._({this.finalLocation, this.reference}) : super._();

  @override
  DestinationRecord rebuild(void Function(DestinationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DestinationRecordBuilder toBuilder() =>
      new DestinationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DestinationRecord &&
        finalLocation == other.finalLocation &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, finalLocation.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DestinationRecord')
          ..add('finalLocation', finalLocation)
          ..add('reference', reference))
        .toString();
  }
}

class DestinationRecordBuilder
    implements Builder<DestinationRecord, DestinationRecordBuilder> {
  _$DestinationRecord _$v;

  LatLng _finalLocation;
  LatLng get finalLocation => _$this._finalLocation;
  set finalLocation(LatLng finalLocation) =>
      _$this._finalLocation = finalLocation;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  DestinationRecordBuilder() {
    DestinationRecord._initializeBuilder(this);
  }

  DestinationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _finalLocation = $v.finalLocation;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DestinationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DestinationRecord;
  }

  @override
  void update(void Function(DestinationRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  DestinationRecord build() => _build();

  _$DestinationRecord _build() {
    final _$result = _$v ??
        new _$DestinationRecord._(
            finalLocation: finalLocation, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
