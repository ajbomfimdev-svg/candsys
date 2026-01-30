import '../database.dart';

class SurveyQuestionsTable extends SupabaseTable<SurveyQuestionsRow> {
  @override
  String get tableName => 'survey_questions';

  @override
  SurveyQuestionsRow createRow(Map<String, dynamic> data) =>
      SurveyQuestionsRow(data);
}

class SurveyQuestionsRow extends SupabaseDataRow {
  SurveyQuestionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SurveyQuestionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get surveyId => getField<String>('survey_id');
  set surveyId(String? value) => setField<String>('survey_id', value);

  String get questionText => getField<String>('question_text')!;
  set questionText(String value) => setField<String>('question_text', value);

  int? get questionOrder => getField<int>('question_order');
  set questionOrder(int? value) => setField<int>('question_order', value);

  bool? get isRequired => getField<bool>('is_required');
  set isRequired(bool? value) => setField<bool>('is_required', value);

  List<String> get opcoes => getListField<String>('opcoes');
  set opcoes(List<String>? value) => setListField<String>('opcoes', value);

  bool? get respostaAberta => getField<bool>('resposta_aberta');
  set respostaAberta(bool? value) => setField<bool>('resposta_aberta', value);

  bool? get opUnica => getField<bool>('op_unica');
  set opUnica(bool? value) => setField<bool>('op_unica', value);
}
