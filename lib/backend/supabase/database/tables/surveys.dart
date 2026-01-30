import '../database.dart';

class SurveysTable extends SupabaseTable<SurveysRow> {
  @override
  String get tableName => 'surveys';

  @override
  SurveysRow createRow(Map<String, dynamic> data) => SurveysRow(data);
}

class SurveysRow extends SupabaseDataRow {
  SurveysRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SurveysTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  String? get targetAudience => getField<String>('target_audience');
  set targetAudience(String? value) =>
      setField<String>('target_audience', value);

  String? get politicoId => getField<String>('politico_id');
  set politicoId(String? value) => setField<String>('politico_id', value);

  String? get userCriador => getField<String>('user_criador');
  set userCriador(String? value) => setField<String>('user_criador', value);

  bool get deletado => getField<bool>('deletado')!;
  set deletado(bool value) => setField<bool>('deletado', value);

  bool get finalizada => getField<bool>('finalizada')!;
  set finalizada(bool value) => setField<bool>('finalizada', value);

  DateTime? get dataInicio => getField<DateTime>('data_inicio');
  set dataInicio(DateTime? value) => setField<DateTime>('data_inicio', value);

  DateTime? get dataFim => getField<DateTime>('data_fim');
  set dataFim(DateTime? value) => setField<DateTime>('data_fim', value);

  bool? get multiOp => getField<bool>('multi_op');
  set multiOp(bool? value) => setField<bool>('multi_op', value);
}
