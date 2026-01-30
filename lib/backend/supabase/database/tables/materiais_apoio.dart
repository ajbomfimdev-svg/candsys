import '../database.dart';

class MateriaisApoioTable extends SupabaseTable<MateriaisApoioRow> {
  @override
  String get tableName => 'materiais_apoio';

  @override
  MateriaisApoioRow createRow(Map<String, dynamic> data) =>
      MateriaisApoioRow(data);
}

class MateriaisApoioRow extends SupabaseDataRow {
  MateriaisApoioRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MateriaisApoioTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);

  String? get aulaId => getField<String>('aula_id');
  set aulaId(String? value) => setField<String>('aula_id', value);

  String? get cursoId => getField<String>('curso_id');
  set cursoId(String? value) => setField<String>('curso_id', value);
}
