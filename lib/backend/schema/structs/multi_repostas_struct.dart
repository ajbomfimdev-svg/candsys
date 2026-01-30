// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MultiRepostasStruct extends FFFirebaseStruct {
  MultiRepostasStruct({
    String? surveyId,
    int? questionId,
    String? respostaEscolhida,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _surveyId = surveyId,
        _questionId = questionId,
        _respostaEscolhida = respostaEscolhida,
        super(firestoreUtilData);

  // "survey_id" field.
  String? _surveyId;
  String get surveyId => _surveyId ?? '';
  set surveyId(String? val) => _surveyId = val;

  bool hasSurveyId() => _surveyId != null;

  // "question_id" field.
  int? _questionId;
  int get questionId => _questionId ?? 0;
  set questionId(int? val) => _questionId = val;

  void incrementQuestionId(int amount) => questionId = questionId + amount;

  bool hasQuestionId() => _questionId != null;

  // "resposta_escolhida" field.
  String? _respostaEscolhida;
  String get respostaEscolhida => _respostaEscolhida ?? '';
  set respostaEscolhida(String? val) => _respostaEscolhida = val;

  bool hasRespostaEscolhida() => _respostaEscolhida != null;

  static MultiRepostasStruct fromMap(Map<String, dynamic> data) =>
      MultiRepostasStruct(
        surveyId: data['survey_id'] as String?,
        questionId: castToType<int>(data['question_id']),
        respostaEscolhida: data['resposta_escolhida'] as String?,
      );

  static MultiRepostasStruct? maybeFromMap(dynamic data) => data is Map
      ? MultiRepostasStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'survey_id': _surveyId,
        'question_id': _questionId,
        'resposta_escolhida': _respostaEscolhida,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'survey_id': serializeParam(
          _surveyId,
          ParamType.String,
        ),
        'question_id': serializeParam(
          _questionId,
          ParamType.int,
        ),
        'resposta_escolhida': serializeParam(
          _respostaEscolhida,
          ParamType.String,
        ),
      }.withoutNulls;

  static MultiRepostasStruct fromSerializableMap(Map<String, dynamic> data) =>
      MultiRepostasStruct(
        surveyId: deserializeParam(
          data['survey_id'],
          ParamType.String,
          false,
        ),
        questionId: deserializeParam(
          data['question_id'],
          ParamType.int,
          false,
        ),
        respostaEscolhida: deserializeParam(
          data['resposta_escolhida'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MultiRepostasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MultiRepostasStruct &&
        surveyId == other.surveyId &&
        questionId == other.questionId &&
        respostaEscolhida == other.respostaEscolhida;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([surveyId, questionId, respostaEscolhida]);
}

MultiRepostasStruct createMultiRepostasStruct({
  String? surveyId,
  int? questionId,
  String? respostaEscolhida,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MultiRepostasStruct(
      surveyId: surveyId,
      questionId: questionId,
      respostaEscolhida: respostaEscolhida,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MultiRepostasStruct? updateMultiRepostasStruct(
  MultiRepostasStruct? multiRepostas, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    multiRepostas
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMultiRepostasStructData(
  Map<String, dynamic> firestoreData,
  MultiRepostasStruct? multiRepostas,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (multiRepostas == null) {
    return;
  }
  if (multiRepostas.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && multiRepostas.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final multiRepostasData =
      getMultiRepostasFirestoreData(multiRepostas, forFieldValue);
  final nestedData =
      multiRepostasData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = multiRepostas.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMultiRepostasFirestoreData(
  MultiRepostasStruct? multiRepostas, [
  bool forFieldValue = false,
]) {
  if (multiRepostas == null) {
    return {};
  }
  final firestoreData = mapToFirestore(multiRepostas.toMap());

  // Add any Firestore field values
  multiRepostas.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMultiRepostasListFirestoreData(
  List<MultiRepostasStruct>? multiRepostass,
) =>
    multiRepostass
        ?.map((e) => getMultiRepostasFirestoreData(e, true))
        .toList() ??
    [];
