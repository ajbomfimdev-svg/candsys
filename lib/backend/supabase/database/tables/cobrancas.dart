import '../database.dart';

class CobrancasTable extends SupabaseTable<CobrancasRow> {
  @override
  String get tableName => 'cobrancas';

  @override
  CobrancasRow createRow(Map<String, dynamic> data) => CobrancasRow(data);
}

class CobrancasRow extends SupabaseDataRow {
  CobrancasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CobrancasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get idCobranca => getField<String>('idCobranca');
  set idCobranca(String? value) => setField<String>('idCobranca', value);

  double? get valorPrimeiraCobranca =>
      getField<double>('valorPrimeiraCobranca');
  set valorPrimeiraCobranca(double? value) =>
      setField<double>('valorPrimeiraCobranca', value);

  double? get valorLiquidoPrimeiraCobranca =>
      getField<double>('valorLiquidoPrimeiraCobranca');
  set valorLiquidoPrimeiraCobranca(double? value) =>
      setField<double>('valorLiquidoPrimeiraCobranca', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get parcela => getField<int>('parcela');
  set parcela(int? value) => setField<int>('parcela', value);

  String? get linkCobranca => getField<String>('linkCobranca');
  set linkCobranca(String? value) => setField<String>('linkCobranca', value);

  String? get invoiceNumber => getField<String>('invoiceNumber');
  set invoiceNumber(String? value) => setField<String>('invoiceNumber', value);

  String? get linkComprovante => getField<String>('linkComprovante');
  set linkComprovante(String? value) =>
      setField<String>('linkComprovante', value);

  String? get ultimosDigitosCartao => getField<String>('ultimosDigitosCartao');
  set ultimosDigitosCartao(String? value) =>
      setField<String>('ultimosDigitosCartao', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
