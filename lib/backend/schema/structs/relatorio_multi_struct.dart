// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RelatorioMultiStruct extends FFFirebaseStruct {
  RelatorioMultiStruct({
    String? surveyId,
    String? pergunta,
    List<String>? respostasEscolhidas,
    List<int>? respostasCounts,
    int? totaisRespostas,
    List<double>? percentuais,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _surveyId = surveyId,
        _pergunta = pergunta,
        _respostasEscolhidas = respostasEscolhidas,
        _respostasCounts = respostasCounts,
        _totaisRespostas = totaisRespostas,
        _percentuais = percentuais,
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

  // "respostas_escolhidas" field.
  List<String>? _respostasEscolhidas;
  List<String> get respostasEscolhidas => _respostasEscolhidas ?? const [];
  set respostasEscolhidas(List<String>? val) => _respostasEscolhidas = val;

  void updateRespostasEscolhidas(Function(List<String>) updateFn) {
    updateFn(_respostasEscolhidas ??= []);
  }

  bool hasRespostasEscolhidas() => _respostasEscolhidas != null;

  // "respostas_counts" field.
  List<int>? _respostasCounts;
  List<int> get respostasCounts => _respostasCounts ?? const [];
  set respostasCounts(List<int>? val) => _respostasCounts = val;

  void updateRespostasCounts(Function(List<int>) updateFn) {
    updateFn(_respostasCounts ??= []);
  }

  bool hasRespostasCounts() => _respostasCounts != null;

  // "totais_respostas" field.
  int? _totaisRespostas;
  int get totaisRespostas => _totaisRespostas ?? 0;
  set totaisRespostas(int? val) => _totaisRespostas = val;

  void incrementTotaisRespostas(int amount) =>
      totaisRespostas = totaisRespostas + amount;

  bool hasTotaisRespostas() => _totaisRespostas != null;

  // "percentuais" field.
  List<double>? _percentuais;
  List<double> get percentuais => _percentuais ?? const [];
  set percentuais(List<double>? val) => _percentuais = val;

  void updatePercentuais(Function(List<double>) updateFn) {
    updateFn(_percentuais ??= []);
  }

  bool hasPercentuais() => _percentuais != null;

  static RelatorioMultiStruct fromMap(Map<String, dynamic> data) =>
      RelatorioMultiStruct(
        surveyId: data['survey_id'] as String?,
        pergunta: data['pergunta'] as String?,
        respostasEscolhidas: getDataList(data['respostas_escolhidas']),
        respostasCounts: getDataList(data['respostas_counts']),
        totaisRespostas: castToType<int>(data['totais_respostas']),
        percentuais: getDataList(data['percentuais']),
      );

  static RelatorioMultiStruct? maybeFromMap(dynamic data) => data is Map
      ? RelatorioMultiStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'survey_id': _surveyId,
        'pergunta': _pergunta,
        'respostas_escolhidas': _respostasEscolhidas,
        'respostas_counts': _respostasCounts,
        'totais_respostas': _totaisRespostas,
        'percentuais': _percentuais,
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
        'respostas_escolhidas': serializeParam(
          _respostasEscolhidas,
          ParamType.String,
          isList: true,
        ),
        'respostas_counts': serializeParam(
          _respostasCounts,
          ParamType.int,
          isList: true,
        ),
        'totais_respostas': serializeParam(
          _totaisRespostas,
          ParamType.int,
        ),
        'percentuais': serializeParam(
          _percentuais,
          ParamType.double,
          isList: true,
        ),
      }.withoutNulls;

  static RelatorioMultiStruct fromSerializableMap(Map<String, dynamic> data) =>
      RelatorioMultiStruct(
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
        respostasEscolhidas: deserializeParam<String>(
          data['respostas_escolhidas'],
          ParamType.String,
          true,
        ),
        respostasCounts: deserializeParam<int>(
          data['respostas_counts'],
          ParamType.int,
          true,
        ),
        totaisRespostas: deserializeParam(
          data['totais_respostas'],
          ParamType.int,
          false,
        ),
        percentuais: deserializeParam<double>(
          data['percentuais'],
          ParamType.double,
          true,
        ),
      );

  @override
  String toString() => 'RelatorioMultiStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RelatorioMultiStruct &&
        surveyId == other.surveyId &&
        pergunta == other.pergunta &&
        listEquality.equals(respostasEscolhidas, other.respostasEscolhidas) &&
        listEquality.equals(respostasCounts, other.respostasCounts) &&
        totaisRespostas == other.totaisRespostas &&
        listEquality.equals(percentuais, other.percentuais);
  }

  @override
  int get hashCode => const ListEquality().hash([
        surveyId,
        pergunta,
        respostasEscolhidas,
        respostasCounts,
        totaisRespostas,
        percentuais
      ]);
}

RelatorioMultiStruct createRelatorioMultiStruct({
  String? surveyId,
  String? pergunta,
  int? totaisRespostas,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RelatorioMultiStruct(
      surveyId: surveyId,
      pergunta: pergunta,
      totaisRespostas: totaisRespostas,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RelatorioMultiStruct? updateRelatorioMultiStruct(
  RelatorioMultiStruct? relatorioMulti, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    relatorioMulti
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRelatorioMultiStructData(
  Map<String, dynamic> firestoreData,
  RelatorioMultiStruct? relatorioMulti,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (relatorioMulti == null) {
    return;
  }
  if (relatorioMulti.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && relatorioMulti.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final relatorioMultiData =
      getRelatorioMultiFirestoreData(relatorioMulti, forFieldValue);
  final nestedData =
      relatorioMultiData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = relatorioMulti.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRelatorioMultiFirestoreData(
  RelatorioMultiStruct? relatorioMulti, [
  bool forFieldValue = false,
]) {
  if (relatorioMulti == null) {
    return {};
  }
  final firestoreData = mapToFirestore(relatorioMulti.toMap());

  // Add any Firestore field values
  relatorioMulti.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRelatorioMultiListFirestoreData(
  List<RelatorioMultiStruct>? relatorioMultis,
) =>
    relatorioMultis
        ?.map((e) => getRelatorioMultiFirestoreData(e, true))
        .toList() ??
    [];
