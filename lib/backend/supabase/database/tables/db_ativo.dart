import '../database.dart';

class DbAtivoTable extends SupabaseTable<DbAtivoRow> {
  @override
  String get tableName => 'db_ativo';

  @override
  DbAtivoRow createRow(Map<String, dynamic> data) => DbAtivoRow(data);
}

class DbAtivoRow extends SupabaseDataRow {
  DbAtivoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DbAtivoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get number => getField<int>('number');
  set number(int? value) => setField<int>('number', value);
}
