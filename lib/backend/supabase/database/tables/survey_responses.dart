import '../database.dart';

class SurveyResponsesTable extends SupabaseTable<SurveyResponsesRow> {
  @override
  String get tableName => 'survey_responses';

  @override
  SurveyResponsesRow createRow(Map<String, dynamic> data) =>
      SurveyResponsesRow(data);
}

class SurveyResponsesRow extends SupabaseDataRow {
  SurveyResponsesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SurveyResponsesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get surveyId => getField<String>('survey_id');
  set surveyId(String? value) => setField<String>('survey_id', value);

  int? get questionId => getField<int>('question_id');
  set questionId(int? value) => setField<int>('question_id', value);

  String? get userPesquisador => getField<String>('user_pesquisador');
  set userPesquisador(String? value) =>
      setField<String>('user_pesquisador', value);

  bool get response => getField<bool>('response')!;
  set response(bool value) => setField<bool>('response', value);

  DateTime? get respondedAt => getField<DateTime>('responded_at');
  set respondedAt(DateTime? value) => setField<DateTime>('responded_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get referenciaPesquisa => getField<String>('referencia_pesquisa');
  set referenciaPesquisa(String? value) =>
      setField<String>('referencia_pesquisa', value);

  bool? get aceitaReceberWpp => getField<bool>('aceita_receber_wpp');
  set aceitaReceberWpp(bool? value) =>
      setField<bool>('aceita_receber_wpp', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  String? get respostaEscolhida => getField<String>('resposta_escolhida');
  set respostaEscolhida(String? value) =>
      setField<String>('resposta_escolhida', value);

  String? get pergunta => getField<String>('pergunta');
  set pergunta(String? value) => setField<String>('pergunta', value);

  String? get respostaAberta => getField<String>('resposta_aberta');
  set respostaAberta(String? value) =>
      setField<String>('resposta_aberta', value);
}
