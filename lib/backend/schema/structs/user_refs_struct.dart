// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UserRefsStruct extends FFFirebaseStruct {
  UserRefsStruct({
    String? userRefs,
    DateTime? scheduledTime,
    String? documentId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userRefs = userRefs,
        _scheduledTime = scheduledTime,
        _documentId = documentId,
        super(firestoreUtilData);

  // "user_refs" field.
  String? _userRefs;
  String get userRefs => _userRefs ?? '';
  set userRefs(String? val) => _userRefs = val;

  bool hasUserRefs() => _userRefs != null;

  // "scheduled_time" field.
  DateTime? _scheduledTime;
  DateTime? get scheduledTime => _scheduledTime;
  set scheduledTime(DateTime? val) => _scheduledTime = val;

  bool hasScheduledTime() => _scheduledTime != null;

  // "documentId" field.
  String? _documentId;
  String get documentId => _documentId ?? '';
  set documentId(String? val) => _documentId = val;

  bool hasDocumentId() => _documentId != null;

  static UserRefsStruct fromMap(Map<String, dynamic> data) => UserRefsStruct(
        userRefs: data['user_refs'] as String?,
        scheduledTime: data['scheduled_time'] as DateTime?,
        documentId: data['documentId'] as String?,
      );

  static UserRefsStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserRefsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'user_refs': _userRefs,
        'scheduled_time': _scheduledTime,
        'documentId': _documentId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user_refs': serializeParam(
          _userRefs,
          ParamType.String,
        ),
        'scheduled_time': serializeParam(
          _scheduledTime,
          ParamType.DateTime,
        ),
        'documentId': serializeParam(
          _documentId,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserRefsStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserRefsStruct(
        userRefs: deserializeParam(
          data['user_refs'],
          ParamType.String,
          false,
        ),
        scheduledTime: deserializeParam(
          data['scheduled_time'],
          ParamType.DateTime,
          false,
        ),
        documentId: deserializeParam(
          data['documentId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserRefsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserRefsStruct &&
        userRefs == other.userRefs &&
        scheduledTime == other.scheduledTime &&
        documentId == other.documentId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([userRefs, scheduledTime, documentId]);
}

UserRefsStruct createUserRefsStruct({
  String? userRefs,
  DateTime? scheduledTime,
  String? documentId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserRefsStruct(
      userRefs: userRefs,
      scheduledTime: scheduledTime,
      documentId: documentId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserRefsStruct? updateUserRefsStruct(
  UserRefsStruct? userRefsStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userRefsStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserRefsStructData(
  Map<String, dynamic> firestoreData,
  UserRefsStruct? userRefsStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userRefsStruct == null) {
    return;
  }
  if (userRefsStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userRefsStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userRefsStructData =
      getUserRefsFirestoreData(userRefsStruct, forFieldValue);
  final nestedData =
      userRefsStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userRefsStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserRefsFirestoreData(
  UserRefsStruct? userRefsStruct, [
  bool forFieldValue = false,
]) {
  if (userRefsStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userRefsStruct.toMap());

  // Add any Firestore field values
  userRefsStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserRefsListFirestoreData(
  List<UserRefsStruct>? userRefsStructs,
) =>
    userRefsStructs?.map((e) => getUserRefsFirestoreData(e, true)).toList() ??
    [];
