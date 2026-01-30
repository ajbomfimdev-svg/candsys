import '../database.dart';

class MeusCursosTable extends SupabaseTable<MeusCursosRow> {
  @override
  String get tableName => 'meus_cursos';

  @override
  MeusCursosRow createRow(Map<String, dynamic> data) => MeusCursosRow(data);
}

class MeusCursosRow extends SupabaseDataRow {
  MeusCursosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MeusCursosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get cursoId => getField<int>('curso_id');
  set cursoId(int? value) => setField<int>('curso_id', value);

  DateTime? get dataCompra => getField<DateTime>('data_compra');
  set dataCompra(DateTime? value) => setField<DateTime>('data_compra', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get subAssinatura => getField<String>('subAssinatura');
  set subAssinatura(String? value) => setField<String>('subAssinatura', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
