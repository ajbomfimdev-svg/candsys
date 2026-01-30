import '../database.dart';

class AssinaturasTable extends SupabaseTable<AssinaturasRow> {
  @override
  String get tableName => 'assinaturas';

  @override
  AssinaturasRow createRow(Map<String, dynamic> data) => AssinaturasRow(data);
}

class AssinaturasRow extends SupabaseDataRow {
  AssinaturasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AssinaturasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  String? get nomeAssitura => getField<String>('nomeAssitura');
  set nomeAssitura(String? value) => setField<String>('nomeAssitura', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get apiPriceAssinatura => getField<String>('apiPriceAssinatura');
  set apiPriceAssinatura(String? value) =>
      setField<String>('apiPriceAssinatura', value);

  String? get statusPgto => getField<String>('statusPgto');
  set statusPgto(String? value) => setField<String>('statusPgto', value);

  String? get customer => getField<String>('customer');
  set customer(String? value) => setField<String>('customer', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get subAssinatura => getField<String>('subAssinatura');
  set subAssinatura(String? value) => setField<String>('subAssinatura', value);

  String? get getwayAssinatura => getField<String>('getwayAssinatura');
  set getwayAssinatura(String? value) =>
      setField<String>('getwayAssinatura', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  bool? get isAssinaturaMensal => getField<bool>('isAssinaturaMensal');
  set isAssinaturaMensal(bool? value) =>
      setField<bool>('isAssinaturaMensal', value);
}
