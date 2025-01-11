import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserExpendituresRecord extends FirestoreRecord {
  UserExpendituresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "utilities" field.
  int? _utilities;
  int get utilities => _utilities ?? 0;
  bool hasUtilities() => _utilities != null;

  // "transportation" field.
  int? _transportation;
  int get transportation => _transportation ?? 0;
  bool hasTransportation() => _transportation != null;

  // "leisure" field.
  int? _leisure;
  int get leisure => _leisure ?? 0;
  bool hasLeisure() => _leisure != null;

  // "clothes" field.
  int? _clothes;
  int get clothes => _clothes ?? 0;
  bool hasClothes() => _clothes != null;

  // "essentials" field.
  int? _essentials;
  int get essentials => _essentials ?? 0;
  bool hasEssentials() => _essentials != null;

  // "tuition" field.
  int? _tuition;
  int get tuition => _tuition ?? 0;
  bool hasTuition() => _tuition != null;

  // "health" field.
  int? _health;
  int get health => _health ?? 0;
  bool hasHealth() => _health != null;

  // "rent" field.
  int? _rent;
  int get rent => _rent ?? 0;
  bool hasRent() => _rent != null;

  // "allowance" field.
  int? _allowance;
  int get allowance => _allowance ?? 0;
  bool hasAllowance() => _allowance != null;

  // "savings" field.
  String? _savings;
  String get savings => _savings ?? '';
  bool hasSavings() => _savings != null;

  // "balance" field.
  int? _balance;
  int get balance => _balance ?? 0;
  bool hasBalance() => _balance != null;

  void _initializeFields() {
    _utilities = castToType<int>(snapshotData['utilities']);
    _transportation = castToType<int>(snapshotData['transportation']);
    _leisure = castToType<int>(snapshotData['leisure']);
    _clothes = castToType<int>(snapshotData['clothes']);
    _essentials = castToType<int>(snapshotData['essentials']);
    _tuition = castToType<int>(snapshotData['tuition']);
    _health = castToType<int>(snapshotData['health']);
    _rent = castToType<int>(snapshotData['rent']);
    _allowance = castToType<int>(snapshotData['allowance']);
    _savings = snapshotData['savings'] as String?;
    _balance = castToType<int>(snapshotData['balance']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userExpenditures');

  static Stream<UserExpendituresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserExpendituresRecord.fromSnapshot(s));

  static Future<UserExpendituresRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserExpendituresRecord.fromSnapshot(s));

  static UserExpendituresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserExpendituresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserExpendituresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserExpendituresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserExpendituresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserExpendituresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserExpendituresRecordData({
  int? utilities,
  int? transportation,
  int? leisure,
  int? clothes,
  int? essentials,
  int? tuition,
  int? health,
  int? rent,
  int? allowance,
  String? savings,
  int? balance,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'utilities': utilities,
      'transportation': transportation,
      'leisure': leisure,
      'clothes': clothes,
      'essentials': essentials,
      'tuition': tuition,
      'health': health,
      'rent': rent,
      'allowance': allowance,
      'savings': savings,
      'balance': balance,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserExpendituresRecordDocumentEquality
    implements Equality<UserExpendituresRecord> {
  const UserExpendituresRecordDocumentEquality();

  @override
  bool equals(UserExpendituresRecord? e1, UserExpendituresRecord? e2) {
    return e1?.utilities == e2?.utilities &&
        e1?.transportation == e2?.transportation &&
        e1?.leisure == e2?.leisure &&
        e1?.clothes == e2?.clothes &&
        e1?.essentials == e2?.essentials &&
        e1?.tuition == e2?.tuition &&
        e1?.health == e2?.health &&
        e1?.rent == e2?.rent &&
        e1?.allowance == e2?.allowance &&
        e1?.savings == e2?.savings &&
        e1?.balance == e2?.balance;
  }

  @override
  int hash(UserExpendituresRecord? e) => const ListEquality().hash([
        e?.utilities,
        e?.transportation,
        e?.leisure,
        e?.clothes,
        e?.essentials,
        e?.tuition,
        e?.health,
        e?.rent,
        e?.allowance,
        e?.savings,
        e?.balance
      ]);

  @override
  bool isValidKey(Object? o) => o is UserExpendituresRecord;
}
