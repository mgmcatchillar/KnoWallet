import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataRecord extends FirestoreRecord {
  DataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "savings" field.
  int? _savings;
  int get savings => _savings ?? 0;
  bool hasSavings() => _savings != null;

  // "rent" field.
  int? _rent;
  int get rent => _rent ?? 0;
  bool hasRent() => _rent != null;

  // "health" field.
  int? _health;
  int get health => _health ?? 0;
  bool hasHealth() => _health != null;

  // "tuition" field.
  int? _tuition;
  int get tuition => _tuition ?? 0;
  bool hasTuition() => _tuition != null;

  // "essentials" field.
  int? _essentials;
  int get essentials => _essentials ?? 0;
  bool hasEssentials() => _essentials != null;

  // "clothes" field.
  int? _clothes;
  int get clothes => _clothes ?? 0;
  bool hasClothes() => _clothes != null;

  // "leisure" field.
  int? _leisure;
  int get leisure => _leisure ?? 0;
  bool hasLeisure() => _leisure != null;

  // "transportation" field.
  int? _transportation;
  int get transportation => _transportation ?? 0;
  bool hasTransportation() => _transportation != null;

  // "utilities" field.
  int? _utilities;
  int get utilities => _utilities ?? 0;
  bool hasUtilities() => _utilities != null;

  void _initializeFields() {
    _savings = castToType<int>(snapshotData['savings']);
    _rent = castToType<int>(snapshotData['rent']);
    _health = castToType<int>(snapshotData['health']);
    _tuition = castToType<int>(snapshotData['tuition']);
    _essentials = castToType<int>(snapshotData['essentials']);
    _clothes = castToType<int>(snapshotData['clothes']);
    _leisure = castToType<int>(snapshotData['leisure']);
    _transportation = castToType<int>(snapshotData['transportation']);
    _utilities = castToType<int>(snapshotData['utilities']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('data');

  static Stream<DataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DataRecord.fromSnapshot(s));

  static Future<DataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DataRecord.fromSnapshot(s));

  static DataRecord fromSnapshot(DocumentSnapshot snapshot) => DataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDataRecordData({
  int? savings,
  int? rent,
  int? health,
  int? tuition,
  int? essentials,
  int? clothes,
  int? leisure,
  int? transportation,
  int? utilities,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'savings': savings,
      'rent': rent,
      'health': health,
      'tuition': tuition,
      'essentials': essentials,
      'clothes': clothes,
      'leisure': leisure,
      'transportation': transportation,
      'utilities': utilities,
    }.withoutNulls,
  );

  return firestoreData;
}

class DataRecordDocumentEquality implements Equality<DataRecord> {
  const DataRecordDocumentEquality();

  @override
  bool equals(DataRecord? e1, DataRecord? e2) {
    return e1?.savings == e2?.savings &&
        e1?.rent == e2?.rent &&
        e1?.health == e2?.health &&
        e1?.tuition == e2?.tuition &&
        e1?.essentials == e2?.essentials &&
        e1?.clothes == e2?.clothes &&
        e1?.leisure == e2?.leisure &&
        e1?.transportation == e2?.transportation &&
        e1?.utilities == e2?.utilities;
  }

  @override
  int hash(DataRecord? e) => const ListEquality().hash([
        e?.savings,
        e?.rent,
        e?.health,
        e?.tuition,
        e?.essentials,
        e?.clothes,
        e?.leisure,
        e?.transportation,
        e?.utilities
      ]);

  @override
  bool isValidKey(Object? o) => o is DataRecord;
}
