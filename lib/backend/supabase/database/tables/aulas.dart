import '../database.dart';

class AulasTable extends SupabaseTable<AulasRow> {
  @override
  String get tableName => 'aulas';

  @override
  AulasRow createRow(Map<String, dynamic> data) => AulasRow(data);
}

class AulasRow extends SupabaseDataRow {
  AulasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AulasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  int? get moduloId => getField<int>('modulo_id');
  set moduloId(int? value) => setField<int>('modulo_id', value);

  int? get cursoId => getField<int>('curso_id');
  set cursoId(int? value) => setField<int>('curso_id', value);

  bool? get visivel => getField<bool>('visivel');
  set visivel(bool? value) => setField<bool>('visivel', value);

  String? get linkAula => getField<String>('link_aula');
  set linkAula(String? value) => setField<String>('link_aula', value);

  List<String> get topicosAula => getListField<String>('topicos_aula');
  set topicosAula(List<String>? value) =>
      setListField<String>('topicos_aula', value);

  int? get tempoMinutos => getField<int>('tempo_minutos');
  set tempoMinutos(int? value) => setField<int>('tempo_minutos', value);
}
