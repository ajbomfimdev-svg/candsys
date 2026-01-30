import '../database.dart';

class AvaliacoesCursosTable extends SupabaseTable<AvaliacoesCursosRow> {
  @override
  String get tableName => 'avaliacoes_cursos';

  @override
  AvaliacoesCursosRow createRow(Map<String, dynamic> data) =>
      AvaliacoesCursosRow(data);
}

class AvaliacoesCursosRow extends SupabaseDataRow {
  AvaliacoesCursosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AvaliacoesCursosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get cursoId => getField<int>('curso_id');
  set cursoId(int? value) => setField<int>('curso_id', value);

  int? get avaliacao => getField<int>('avaliacao');
  set avaliacao(int? value) => setField<int>('avaliacao', value);
}
