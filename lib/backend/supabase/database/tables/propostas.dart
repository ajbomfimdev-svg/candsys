import '../database.dart';

class PropostasTable extends SupabaseTable<PropostasRow> {
  @override
  String get tableName => 'propostas';

  @override
  PropostasRow createRow(Map<String, dynamic> data) => PropostasRow(data);
}

class PropostasRow extends SupabaseDataRow {
  PropostasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropostasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get politicoId => getField<String>('politico_id');
  set politicoId(String? value) => setField<String>('politico_id', value);

  String? get area => getField<String>('area');
  set area(String? value) => setField<String>('area', value);

  String? get proposta => getField<String>('proposta');
  set proposta(String? value) => setField<String>('proposta', value);
}
