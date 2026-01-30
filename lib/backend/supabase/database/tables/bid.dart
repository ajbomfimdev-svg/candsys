import '../database.dart';

class BidTable extends SupabaseTable<BidRow> {
  @override
  String get tableName => 'bid';

  @override
  BidRow createRow(Map<String, dynamic> data) => BidRow(data);
}

class BidRow extends SupabaseDataRow {
  BidRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BidTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get seuCodigo => getField<String>('seu_codigo');
  set seuCodigo(String? value) => setField<String>('seu_codigo', value);

  String? get localBid => getField<String>('local_bid');
  set localBid(String? value) => setField<String>('local_bid', value);

  String? get partido => getField<String>('partido');
  set partido(String? value) => setField<String>('partido', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get nomeContato => getField<String>('nome_contato');
  set nomeContato(String? value) => setField<String>('nome_contato', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get cargo => getField<String>('cargo');
  set cargo(String? value) => setField<String>('cargo', value);

  int? get qtdLicenca => getField<int>('qtd_licenca');
  set qtdLicenca(int? value) => setField<int>('qtd_licenca', value);

  String? get validade => getField<String>('validade');
  set validade(String? value) => setField<String>('validade', value);

  String? get tipoBid => getField<String>('tipo_bid');
  set tipoBid(String? value) => setField<String>('tipo_bid', value);

  String? get tipoLicenca => getField<String>('tipo_licenca');
  set tipoLicenca(String? value) => setField<String>('tipo_licenca', value);

  String? get prazoFechamento => getField<String>('prazo_fechamento');
  set prazoFechamento(String? value) =>
      setField<String>('prazo_fechamento', value);

  String? get nomeIndicador => getField<String>('nome_indicador');
  set nomeIndicador(String? value) => setField<String>('nome_indicador', value);

  int? get preco => getField<int>('preco');
  set preco(int? value) => setField<int>('preco', value);
}
