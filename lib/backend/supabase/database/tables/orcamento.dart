import '../database.dart';

class OrcamentoTable extends SupabaseTable<OrcamentoRow> {
  @override
  String get tableName => 'orcamento';

  @override
  OrcamentoRow createRow(Map<String, dynamic> data) => OrcamentoRow(data);
}

class OrcamentoRow extends SupabaseDataRow {
  OrcamentoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrcamentoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get politicoId => getField<String>('politico_id');
  set politicoId(String? value) => setField<String>('politico_id', value);

  String? get produto => getField<String>('produto');
  set produto(String? value) => setField<String>('produto', value);

  double? get quantidade => getField<double>('quantidade');
  set quantidade(double? value) => setField<double>('quantidade', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  double? get valorUnitario => getField<double>('valor_unitario');
  set valorUnitario(double? value) => setField<double>('valor_unitario', value);

  String? get notaFiscal => getField<String>('notaFiscal');
  set notaFiscal(String? value) => setField<String>('notaFiscal', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);
}
