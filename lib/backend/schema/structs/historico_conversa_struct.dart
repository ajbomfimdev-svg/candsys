// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class HistoricoConversaStruct extends FFFirebaseStruct {
  HistoricoConversaStruct({
    String? role,
    String? content,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _role = role,
        _content = content,
        super(firestoreUtilData);

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  static HistoricoConversaStruct fromMap(Map<String, dynamic> data) =>
      HistoricoConversaStruct(
        role: data['role'] as String?,
        content: data['content'] as String?,
      );

  static HistoricoConversaStruct? maybeFromMap(dynamic data) => data is Map
      ? HistoricoConversaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'role': _role,
        'content': _content,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
      }.withoutNulls;

  static HistoricoConversaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      HistoricoConversaStruct(
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'HistoricoConversaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HistoricoConversaStruct &&
        role == other.role &&
        content == other.content;
  }

  @override
  int get hashCode => const ListEquality().hash([role, content]);
}

HistoricoConversaStruct createHistoricoConversaStruct({
  String? role,
  String? content,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HistoricoConversaStruct(
      role: role,
      content: content,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HistoricoConversaStruct? updateHistoricoConversaStruct(
  HistoricoConversaStruct? historicoConversa, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    historicoConversa
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHistoricoConversaStructData(
  Map<String, dynamic> firestoreData,
  HistoricoConversaStruct? historicoConversa,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (historicoConversa == null) {
    return;
  }
  if (historicoConversa.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && historicoConversa.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final historicoConversaData =
      getHistoricoConversaFirestoreData(historicoConversa, forFieldValue);
  final nestedData =
      historicoConversaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = historicoConversa.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHistoricoConversaFirestoreData(
  HistoricoConversaStruct? historicoConversa, [
  bool forFieldValue = false,
]) {
  if (historicoConversa == null) {
    return {};
  }
  final firestoreData = mapToFirestore(historicoConversa.toMap());

  // Add any Firestore field values
  historicoConversa.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHistoricoConversaListFirestoreData(
  List<HistoricoConversaStruct>? historicoConversas,
) =>
    historicoConversas
        ?.map((e) => getHistoricoConversaFirestoreData(e, true))
        .toList() ??
    [];
