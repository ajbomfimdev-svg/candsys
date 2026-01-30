import '../database.dart';

class ModulosTable extends SupabaseTable<ModulosRow> {
  @override
  String get tableName => 'modulos';

  @override
  ModulosRow createRow(Map<String, dynamic> data) => ModulosRow(data);
}

class ModulosRow extends SupabaseDataRow {
  ModulosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ModulosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);

  int? get cursoId => getField<int>('curso_id');
  set cursoId(int? value) => setField<int>('curso_id', value);

  bool? get visivel => getField<bool>('visivel');
  set visivel(bool? value) => setField<bool>('visivel', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);
}
