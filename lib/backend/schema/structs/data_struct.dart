// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DataStruct extends FFFirebaseStruct {
  DataStruct({
    int? data,
    int? jj,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _data = data,
        _jj = jj,
        super(firestoreUtilData);

  // "data" field.
  int? _data;
  int get data => _data ?? 0;
  set data(int? val) => _data = val;

  void incrementData(int amount) => data = data + amount;

  bool hasData() => _data != null;

  // "jj" field.
  int? _jj;
  int get jj => _jj ?? 5000;
  set jj(int? val) => _jj = val;

  void incrementJj(int amount) => jj = jj + amount;

  bool hasJj() => _jj != null;

  static DataStruct fromMap(Map<String, dynamic> data) => DataStruct(
        data: castToType<int>(data['data']),
        jj: castToType<int>(data['jj']),
      );

  static DataStruct? maybeFromMap(dynamic data) =>
      data is Map ? DataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'data': _data,
        'jj': _jj,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.int,
        ),
        'jj': serializeParam(
          _jj,
          ParamType.int,
        ),
      }.withoutNulls;

  static DataStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataStruct(
        data: deserializeParam(
          data['data'],
          ParamType.int,
          false,
        ),
        jj: deserializeParam(
          data['jj'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataStruct && data == other.data && jj == other.jj;
  }

  @override
  int get hashCode => const ListEquality().hash([data, jj]);
}

DataStruct createDataStruct({
  int? data,
  int? jj,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DataStruct(
      data: data,
      jj: jj,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DataStruct? updateDataStruct(
  DataStruct? dataStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dataStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDataStructData(
  Map<String, dynamic> firestoreData,
  DataStruct? dataStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dataStruct == null) {
    return;
  }
  if (dataStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dataStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dataStructData = getDataFirestoreData(dataStruct, forFieldValue);
  final nestedData = dataStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dataStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDataFirestoreData(
  DataStruct? dataStruct, [
  bool forFieldValue = false,
]) {
  if (dataStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dataStruct.toMap());

  // Add any Firestore field values
  dataStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDataListFirestoreData(
  List<DataStruct>? dataStructs,
) =>
    dataStructs?.map((e) => getDataFirestoreData(e, true)).toList() ?? [];
