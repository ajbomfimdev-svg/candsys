// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionsStruct extends FFFirebaseStruct {
  QuestionsStruct({
    int? id,
    String? surveyId,
    String? questionText,
    int? questionOrder,
    bool? isRequired,
    List<String>? opcoes,
    bool? respostaAberta,
    bool? opUnica,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _surveyId = surveyId,
        _questionText = questionText,
        _questionOrder = questionOrder,
        _isRequired = isRequired,
        _opcoes = opcoes,
        _respostaAberta = respostaAberta,
        _opUnica = opUnica,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "survey_id" field.
  String? _surveyId;
  String get surveyId => _surveyId ?? '';
  set surveyId(String? val) => _surveyId = val;

  bool hasSurveyId() => _surveyId != null;

  // "question_text" field.
  String? _questionText;
  String get questionText => _questionText ?? '';
  set questionText(String? val) => _questionText = val;

  bool hasQuestionText() => _questionText != null;

  // "question_order" field.
  int? _questionOrder;
  int get questionOrder => _questionOrder ?? 0;
  set questionOrder(int? val) => _questionOrder = val;

  void incrementQuestionOrder(int amount) =>
      questionOrder = questionOrder + amount;

  bool hasQuestionOrder() => _questionOrder != null;

  // "is_required" field.
  bool? _isRequired;
  bool get isRequired => _isRequired ?? false;
  set isRequired(bool? val) => _isRequired = val;

  bool hasIsRequired() => _isRequired != null;

  // "opcoes" field.
  List<String>? _opcoes;
  List<String> get opcoes => _opcoes ?? const [];
  set opcoes(List<String>? val) => _opcoes = val;

  void updateOpcoes(Function(List<String>) updateFn) {
    updateFn(_opcoes ??= []);
  }

  bool hasOpcoes() => _opcoes != null;

  // "resposta_aberta" field.
  bool? _respostaAberta;
  bool get respostaAberta => _respostaAberta ?? false;
  set respostaAberta(bool? val) => _respostaAberta = val;

  bool hasRespostaAberta() => _respostaAberta != null;

  // "op_unica" field.
  bool? _opUnica;
  bool get opUnica => _opUnica ?? false;
  set opUnica(bool? val) => _opUnica = val;

  bool hasOpUnica() => _opUnica != null;

  static QuestionsStruct fromMap(Map<String, dynamic> data) => QuestionsStruct(
        id: castToType<int>(data['id']),
        surveyId: data['survey_id'] as String?,
        questionText: data['question_text'] as String?,
        questionOrder: castToType<int>(data['question_order']),
        isRequired: data['is_required'] as bool?,
        opcoes: getDataList(data['opcoes']),
        respostaAberta: data['resposta_aberta'] as bool?,
        opUnica: data['op_unica'] as bool?,
      );

  static QuestionsStruct? maybeFromMap(dynamic data) => data is Map
      ? QuestionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'survey_id': _surveyId,
        'question_text': _questionText,
        'question_order': _questionOrder,
        'is_required': _isRequired,
        'opcoes': _opcoes,
        'resposta_aberta': _respostaAberta,
        'op_unica': _opUnica,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'survey_id': serializeParam(
          _surveyId,
          ParamType.String,
        ),
        'question_text': serializeParam(
          _questionText,
          ParamType.String,
        ),
        'question_order': serializeParam(
          _questionOrder,
          ParamType.int,
        ),
        'is_required': serializeParam(
          _isRequired,
          ParamType.bool,
        ),
        'opcoes': serializeParam(
          _opcoes,
          ParamType.String,
          isList: true,
        ),
        'resposta_aberta': serializeParam(
          _respostaAberta,
          ParamType.bool,
        ),
        'op_unica': serializeParam(
          _opUnica,
          ParamType.bool,
        ),
      }.withoutNulls;

  static QuestionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestionsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        surveyId: deserializeParam(
          data['survey_id'],
          ParamType.String,
          false,
        ),
        questionText: deserializeParam(
          data['question_text'],
          ParamType.String,
          false,
        ),
        questionOrder: deserializeParam(
          data['question_order'],
          ParamType.int,
          false,
        ),
        isRequired: deserializeParam(
          data['is_required'],
          ParamType.bool,
          false,
        ),
        opcoes: deserializeParam<String>(
          data['opcoes'],
          ParamType.String,
          true,
        ),
        respostaAberta: deserializeParam(
          data['resposta_aberta'],
          ParamType.bool,
          false,
        ),
        opUnica: deserializeParam(
          data['op_unica'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'QuestionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is QuestionsStruct &&
        id == other.id &&
        surveyId == other.surveyId &&
        questionText == other.questionText &&
        questionOrder == other.questionOrder &&
        isRequired == other.isRequired &&
        listEquality.equals(opcoes, other.opcoes) &&
        respostaAberta == other.respostaAberta &&
        opUnica == other.opUnica;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        surveyId,
        questionText,
        questionOrder,
        isRequired,
        opcoes,
        respostaAberta,
        opUnica
      ]);
}

QuestionsStruct createQuestionsStruct({
  int? id,
  String? surveyId,
  String? questionText,
  int? questionOrder,
  bool? isRequired,
  bool? respostaAberta,
  bool? opUnica,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuestionsStruct(
      id: id,
      surveyId: surveyId,
      questionText: questionText,
      questionOrder: questionOrder,
      isRequired: isRequired,
      respostaAberta: respostaAberta,
      opUnica: opUnica,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuestionsStruct? updateQuestionsStruct(
  QuestionsStruct? questions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    questions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuestionsStructData(
  Map<String, dynamic> firestoreData,
  QuestionsStruct? questions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (questions == null) {
    return;
  }
  if (questions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && questions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final questionsData = getQuestionsFirestoreData(questions, forFieldValue);
  final nestedData = questionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = questions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuestionsFirestoreData(
  QuestionsStruct? questions, [
  bool forFieldValue = false,
]) {
  if (questions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(questions.toMap());

  // Add any Firestore field values
  questions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuestionsListFirestoreData(
  List<QuestionsStruct>? questionss,
) =>
    questionss?.map((e) => getQuestionsFirestoreData(e, true)).toList() ?? [];
