import '../database.dart';

class AcessoresTable extends SupabaseTable<AcessoresRow> {
  @override
  String get tableName => 'acessores';

  @override
  AcessoresRow createRow(Map<String, dynamic> data) => AcessoresRow(data);
}

class AcessoresRow extends SupabaseDataRow {
  AcessoresRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AcessoresTable();

  String get idAcessor => getField<String>('idAcessor')!;
  set idAcessor(String value) => setField<String>('idAcessor', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get politico => getField<String>('politico');
  set politico(String? value) => setField<String>('politico', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get religiao => getField<String>('religiao');
  set religiao(String? value) => setField<String>('religiao', value);

  String? get precisando => getField<String>('precisando');
  set precisando(String? value) => setField<String>('precisando', value);

  String? get sugestoes => getField<String>('sugestoes');
  set sugestoes(String? value) => setField<String>('sugestoes', value);

  String? get time => getField<String>('time');
  set time(String? value) => setField<String>('time', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get numEndereco => getField<String>('num_endereco');
  set numEndereco(String? value) => setField<String>('num_endereco', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get idContaPrincipal => getField<String>('idContaPrincipal');
  set idContaPrincipal(String? value) =>
      setField<String>('idContaPrincipal', value);

  String? get cargo => getField<String>('cargo');
  set cargo(String? value) => setField<String>('cargo', value);

  bool? get finalizouCadastro => getField<bool>('finalizouCadastro');
  set finalizouCadastro(bool? value) =>
      setField<bool>('finalizouCadastro', value);

  DateTime? get dataCriacao => getField<DateTime>('dataCriacao');
  set dataCriacao(DateTime? value) => setField<DateTime>('dataCriacao', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  DateTime? get dataNascimento => getField<DateTime>('data_nascimento');
  set dataNascimento(DateTime? value) =>
      setField<DateTime>('data_nascimento', value);

  String? get profissao => getField<String>('profissao');
  set profissao(String? value) => setField<String>('profissao', value);

  String? get politicoNome => getField<String>('politico_nome');
  set politicoNome(String? value) => setField<String>('politico_nome', value);
}
