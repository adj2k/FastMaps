import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'destination_record.g.dart';

abstract class DestinationRecord
    implements Built<DestinationRecord, DestinationRecordBuilder> {
  static Serializer<DestinationRecord> get serializer =>
      _$destinationRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'FinalLocation')
  LatLng get finalLocation;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DestinationRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Destination');

  static Stream<DestinationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DestinationRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DestinationRecord._();
  factory DestinationRecord([void Function(DestinationRecordBuilder) updates]) =
      _$DestinationRecord;

  static DestinationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDestinationRecordData({
  LatLng finalLocation,
}) =>
    serializers.toFirestore(DestinationRecord.serializer,
        DestinationRecord((d) => d..finalLocation = finalLocation));
