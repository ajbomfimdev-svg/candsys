// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RelatorioPesqYesNoStruct extends FFFirebaseStruct {
  RelatorioPesqYesNoStruct({
    String? questionText,
    int? totalResponses,
    int? yesCount,
    int? noCount,
    double? yesPercentage,
    double? noPercentage,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _questionText = questionText,
        _totalResponses = totalResponses,
        _yesCount = yesCount,
        _noCount = noCount,
        _yesPercentage = yesPercentage,
        _noPercentage = noPercentage,
        super(firestoreUtilData);

  // "question_text" field.
  String? _questionText;
  String get questionText => _questionText ?? '';
  set questionText(String? val) => _questionText = val;

  bool hasQuestionText() => _questionText != null;

  // "total_responses" field.
  int? _totalResponses;
  int get totalResponses => _totalResponses ?? 0;
  set totalResponses(int? val) => _totalResponses = val;

  void incrementTotalResponses(int amount) =>
      totalResponses = totalResponses + amount;

  bool hasTotalResponses() => _totalResponses != null;

  // "yes_count" field.
  int? _yesCount;
  int get yesCount => _yesCount ?? 0;
  set yesCount(int? val) => _yesCount = val;

  void incrementYesCount(int amount) => yesCount = yesCount + amount;

  bool hasYesCount() => _yesCount != null;

  // "no_count" field.
  int? _noCount;
  int get noCount => _noCount ?? 0;
  set noCount(int? val) => _noCount = val;

  void incrementNoCount(int amount) => noCount = noCount + amount;

  bool hasNoCount() => _noCount != null;

  // "yes_percentage" field.
  double? _yesPercentage;
  double get yesPercentage => _yesPercentage ?? 0.0;
  set yesPercentage(double? val) => _yesPercentage = val;

  void incrementYesPercentage(double amount) =>
      yesPercentage = yesPercentage + amount;

  bool hasYesPercentage() => _yesPercentage != null;

  // "no_percentage" field.
  double? _noPercentage;
  double get noPercentage => _noPercentage ?? 0.0;
  set noPercentage(double? val) => _noPercentage = val;

  void incrementNoPercentage(double amount) =>
      noPercentage = noPercentage + amount;

  bool hasNoPercentage() => _noPercentage != null;

  static RelatorioPesqYesNoStruct fromMap(Map<String, dynamic> data) =>
      RelatorioPesqYesNoStruct(
        questionText: data['question_text'] as String?,
        totalResponses: castToType<int>(data['total_responses']),
        yesCount: castToType<int>(data['yes_count']),
        noCount: castToType<int>(data['no_count']),
        yesPercentage: castToType<double>(data['yes_percentage']),
        noPercentage: castToType<double>(data['no_percentage']),
      );

  static RelatorioPesqYesNoStruct? maybeFromMap(dynamic data) => data is Map
      ? RelatorioPesqYesNoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'question_text': _questionText,
        'total_responses': _totalResponses,
        'yes_count': _yesCount,
        'no_count': _noCount,
        'yes_percentage': _yesPercentage,
        'no_percentage': _noPercentage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'question_text': serializeParam(
          _questionText,
          ParamType.String,
        ),
        'total_responses': serializeParam(
          _totalResponses,
          ParamType.int,
        ),
        'yes_count': serializeParam(
          _yesCount,
          ParamType.int,
        ),
        'no_count': serializeParam(
          _noCount,
          ParamType.int,
        ),
        'yes_percentage': serializeParam(
          _yesPercentage,
          ParamType.double,
        ),
        'no_percentage': serializeParam(
          _noPercentage,
          ParamType.double,
        ),
      }.withoutNulls;

  static RelatorioPesqYesNoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RelatorioPesqYesNoStruct(
        questionText: deserializeParam(
          data['question_text'],
          ParamType.String,
          false,
        ),
        totalResponses: deserializeParam(
          data['total_responses'],
          ParamType.int,
          false,
        ),
        yesCount: deserializeParam(
          data['yes_count'],
          ParamType.int,
          false,
        ),
        noCount: deserializeParam(
          data['no_count'],
          ParamType.int,
          false,
        ),
        yesPercentage: deserializeParam(
          data['yes_percentage'],
          ParamType.double,
          false,
        ),
        noPercentage: deserializeParam(
          data['no_percentage'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'RelatorioPesqYesNoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RelatorioPesqYesNoStruct &&
        questionText == other.questionText &&
        totalResponses == other.totalResponses &&
        yesCount == other.yesCount &&
        noCount == other.noCount &&
        yesPercentage == other.yesPercentage &&
        noPercentage == other.noPercentage;
  }

  @override
  int get hashCode => const ListEquality().hash([
        questionText,
        totalResponses,
        yesCount,
        noCount,
        yesPercentage,
        noPercentage
      ]);
}

RelatorioPesqYesNoStruct createRelatorioPesqYesNoStruct({
  String? questionText,
  int? totalResponses,
  int? yesCount,
  int? noCount,
  double? yesPercentage,
  double? noPercentage,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RelatorioPesqYesNoStruct(
      questionText: questionText,
      totalResponses: totalResponses,
      yesCount: yesCount,
      noCount: noCount,
      yesPercentage: yesPercentage,
      noPercentage: noPercentage,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RelatorioPesqYesNoStruct? updateRelatorioPesqYesNoStruct(
  RelatorioPesqYesNoStruct? relatorioPesqYesNo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    relatorioPesqYesNo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRelatorioPesqYesNoStructData(
  Map<String, dynamic> firestoreData,
  RelatorioPesqYesNoStruct? relatorioPesqYesNo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (relatorioPesqYesNo == null) {
    return;
  }
  if (relatorioPesqYesNo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && relatorioPesqYesNo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final relatorioPesqYesNoData =
      getRelatorioPesqYesNoFirestoreData(relatorioPesqYesNo, forFieldValue);
  final nestedData =
      relatorioPesqYesNoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      relatorioPesqYesNo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRelatorioPesqYesNoFirestoreData(
  RelatorioPesqYesNoStruct? relatorioPesqYesNo, [
  bool forFieldValue = false,
]) {
  if (relatorioPesqYesNo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(relatorioPesqYesNo.toMap());

  // Add any Firestore field values
  relatorioPesqYesNo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRelatorioPesqYesNoListFirestoreData(
  List<RelatorioPesqYesNoStruct>? relatorioPesqYesNos,
) =>
    relatorioPesqYesNos
        ?.map((e) => getRelatorioPesqYesNoFirestoreData(e, true))
        .toList() ??
    [];
