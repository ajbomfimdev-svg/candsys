// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RelatorioMultiRespStruct extends FFFirebaseStruct {
  RelatorioMultiRespStruct({
    String? surveyId,
    String? pergunta,
    String? respostaEscolhida,
    int? respostasCount,
    int? totalRespostas,
    int? percentual,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _surveyId = surveyId,
        _pergunta = pergunta,
        _respostaEscolhida = respostaEscolhida,
        _respostasCount = respostasCount,
        _totalRespostas = totalRespostas,
        _percentual = percentual,
        super(firestoreUtilData);

  // "survey_id" field.
  String? _surveyId;
  String get surveyId => _surveyId ?? '';
  set surveyId(String? val) => _surveyId = val;

  bool hasSurveyId() => _surveyId != null;

  // "pergunta" field.
  String? _pergunta;
  String get pergunta => _pergunta ?? '';
  set pergunta(String? val) => _pergunta = val;

  bool hasPergunta() => _pergunta != null;

  // "resposta_escolhida" field.
  String? _respostaEscolhida;
  String get respostaEscolhida => _respostaEscolhida ?? '';
  set respostaEscolhida(String? val) => _respostaEscolhida = val;

  bool hasRespostaEscolhida() => _respostaEscolhida != null;

  // "respostas_count" field.
  int? _respostasCount;
  int get respostasCount => _respostasCount ?? 0;
  set respostasCount(int? val) => _respostasCount = val;

  void incrementRespostasCount(int amount) =>
      respostasCount = respostasCount + amount;

  bool hasRespostasCount() => _respostasCount != null;

  // "total_respostas" field.
  int? _totalRespostas;
  int get totalRespostas => _totalRespostas ?? 0;
  set totalRespostas(int? val) => _totalRespostas = val;

  void incrementTotalRespostas(int amount) =>
      totalRespostas = totalRespostas + amount;

  bool hasTotalRespostas() => _totalRespostas != null;

  // "percentual" field.
  int? _percentual;
  int get percentual => _percentual ?? 0;
  set percentual(int? val) => _percentual = val;

  void incrementPercentual(int amount) => percentual = percentual + amount;

  bool hasPercentual() => _percentual != null;

  static RelatorioMultiRespStruct fromMap(Map<String, dynamic> data) =>
      RelatorioMultiRespStruct(
        surveyId: data['survey_id'] as String?,
        pergunta: data['pergunta'] as String?,
        respostaEscolhida: data['resposta_escolhida'] as String?,
        respostasCount: castToType<int>(data['respostas_count']),
        totalRespostas: castToType<int>(data['total_respostas']),
        percentual: castToType<int>(data['percentual']),
      );

  static RelatorioMultiRespStruct? maybeFromMap(dynamic data) => data is Map
      ? RelatorioMultiRespStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'survey_id': _surveyId,
        'pergunta': _pergunta,
        'resposta_escolhida': _respostaEscolhida,
        'respostas_count': _respostasCount,
        'total_respostas': _totalRespostas,
        'percentual': _percentual,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'survey_id': serializeParam(
          _surveyId,
          ParamType.String,
        ),
        'pergunta': serializeParam(
          _pergunta,
          ParamType.String,
        ),
        'resposta_escolhida': serializeParam(
          _respostaEscolhida,
          ParamType.String,
        ),
        'respostas_count': serializeParam(
          _respostasCount,
          ParamType.int,
        ),
        'total_respostas': serializeParam(
          _totalRespostas,
          ParamType.int,
        ),
        'percentual': serializeParam(
          _percentual,
          ParamType.int,
        ),
      }.withoutNulls;

  static RelatorioMultiRespStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RelatorioMultiRespStruct(
        surveyId: deserializeParam(
          data['survey_id'],
          ParamType.String,
          false,
        ),
        pergunta: deserializeParam(
          data['pergunta'],
          ParamType.String,
          false,
        ),
        respostaEscolhida: deserializeParam(
          data['resposta_escolhida'],
          ParamType.String,
          false,
        ),
        respostasCount: deserializeParam(
          data['respostas_count'],
          ParamType.int,
          false,
        ),
        totalRespostas: deserializeParam(
          data['total_respostas'],
          ParamType.int,
          false,
        ),
        percentual: deserializeParam(
          data['percentual'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RelatorioMultiRespStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RelatorioMultiRespStruct &&
        surveyId == other.surveyId &&
        pergunta == other.pergunta &&
        respostaEscolhida == other.respostaEscolhida &&
        respostasCount == other.respostasCount &&
        totalRespostas == other.totalRespostas &&
        percentual == other.percentual;
  }

  @override
  int get hashCode => const ListEquality().hash([
        surveyId,
        pergunta,
        respostaEscolhida,
        respostasCount,
        totalRespostas,
        percentual
      ]);
}

RelatorioMultiRespStruct createRelatorioMultiRespStruct({
  String? surveyId,
  String? pergunta,
  String? respostaEscolhida,
  int? respostasCount,
  int? totalRespostas,
  int? percentual,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RelatorioMultiRespStruct(
      surveyId: surveyId,
      pergunta: pergunta,
      respostaEscolhida: respostaEscolhida,
      respostasCount: respostasCount,
      totalRespostas: totalRespostas,
      percentual: percentual,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RelatorioMultiRespStruct? updateRelatorioMultiRespStruct(
  RelatorioMultiRespStruct? relatorioMultiResp, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    relatorioMultiResp
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRelatorioMultiRespStructData(
  Map<String, dynamic> firestoreData,
  RelatorioMultiRespStruct? relatorioMultiResp,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (relatorioMultiResp == null) {
    return;
  }
  if (relatorioMultiResp.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && relatorioMultiResp.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final relatorioMultiRespData =
      getRelatorioMultiRespFirestoreData(relatorioMultiResp, forFieldValue);
  final nestedData =
      relatorioMultiRespData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      relatorioMultiResp.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRelatorioMultiRespFirestoreData(
  RelatorioMultiRespStruct? relatorioMultiResp, [
  bool forFieldValue = false,
]) {
  if (relatorioMultiResp == null) {
    return {};
  }
  final firestoreData = mapToFirestore(relatorioMultiResp.toMap());

  // Add any Firestore field values
  relatorioMultiResp.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRelatorioMultiRespListFirestoreData(
  List<RelatorioMultiRespStruct>? relatorioMultiResps,
) =>
    relatorioMultiResps
        ?.map((e) => getRelatorioMultiRespFirestoreData(e, true))
        .toList() ??
    [];
