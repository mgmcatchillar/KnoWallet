import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CollRecord extends FirestoreRecord {
  CollRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "labels" field.
  List<String>? _labels;
  List<String> get labels => _labels ?? const [];
  bool hasLabels() => _labels != null;

  // "values" field.
  List<double>? _values;
  List<double> get values => _values ?? const [];
  bool hasValues() => _values != null;

  void _initializeFields() {
    _labels = getDataList(snapshotData['labels']);
    _values = getDataList(snapshotData['values']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coll');

  static Stream<CollRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CollRecord.fromSnapshot(s));

  static Future<CollRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CollRecord.fromSnapshot(s));

  static CollRecord fromSnapshot(DocumentSnapshot snapshot) => CollRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CollRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CollRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CollRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CollRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCollRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class CollRecordDocumentEquality implements Equality<CollRecord> {
  const CollRecordDocumentEquality();

  @override
  bool equals(CollRecord? e1, CollRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.labels, e2?.labels) &&
        listEquality.equals(e1?.values, e2?.values);
  }

  @override
  int hash(CollRecord? e) => const ListEquality().hash([e?.labels, e?.values]);

  @override
  bool isValidKey(Object? o) => o is CollRecord;
}
