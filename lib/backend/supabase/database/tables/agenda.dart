import '../database.dart';

class AgendaTable extends SupabaseTable<AgendaRow> {
  @override
  String get tableName => 'agenda';

  @override
  AgendaRow createRow(Map<String, dynamic> data) => AgendaRow(data);
}

class AgendaRow extends SupabaseDataRow {
  AgendaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AgendaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get num => getField<int>('num');
  set num(int? value) => setField<int>('num', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  String? get compromisso => getField<String>('compromisso');
  set compromisso(String? value) => setField<String>('compromisso', value);

  String? get detalhe => getField<String>('detalhe');
  set detalhe(String? value) => setField<String>('detalhe', value);

  bool? get cancelado => getField<bool>('cancelado');
  set cancelado(bool? value) => setField<bool>('cancelado', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  bool? get concluido => getField<bool>('concluido');
  set concluido(bool? value) => setField<bool>('concluido', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);
}
