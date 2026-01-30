import '../database.dart';

class CategoriasCursosTable extends SupabaseTable<CategoriasCursosRow> {
  @override
  String get tableName => 'categorias_cursos';

  @override
  CategoriasCursosRow createRow(Map<String, dynamic> data) =>
      CategoriasCursosRow(data);
}

class CategoriasCursosRow extends SupabaseDataRow {
  CategoriasCursosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoriasCursosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);

  bool? get visivel => getField<bool>('visivel');
  set visivel(bool? value) => setField<bool>('visivel', value);
}
