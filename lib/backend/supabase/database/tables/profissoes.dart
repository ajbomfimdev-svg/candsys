import '../database.dart';

class ProfissoesTable extends SupabaseTable<ProfissoesRow> {
  @override
  String get tableName => 'profissoes';

  @override
  ProfissoesRow createRow(Map<String, dynamic> data) => ProfissoesRow(data);
}

class ProfissoesRow extends SupabaseDataRow {
  ProfissoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProfissoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get profissao => getField<String>('profissao');
  set profissao(String? value) => setField<String>('profissao', value);

  int? get dia => getField<int>('dia');
  set dia(int? value) => setField<int>('dia', value);

  int? get mes => getField<int>('mes');
  set mes(int? value) => setField<int>('mes', value);
}
