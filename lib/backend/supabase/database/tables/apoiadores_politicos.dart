import '../database.dart';

class ApoiadoresPoliticosTable extends SupabaseTable<ApoiadoresPoliticosRow> {
  @override
  String get tableName => 'apoiadoresPoliticos';

  @override
  ApoiadoresPoliticosRow createRow(Map<String, dynamic> data) =>
      ApoiadoresPoliticosRow(data);
}

class ApoiadoresPoliticosRow extends SupabaseDataRow {
  ApoiadoresPoliticosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ApoiadoresPoliticosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

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

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  DateTime? get dataNascimento => getField<DateTime>('data_nascimento');
  set dataNascimento(DateTime? value) =>
      setField<DateTime>('data_nascimento', value);

  bool? get eleitor => getField<bool>('eleitor');
  set eleitor(bool? value) => setField<bool>('eleitor', value);

  bool? get aceitaInfoWhatsapp => getField<bool>('aceita_info_whatsapp');
  set aceitaInfoWhatsapp(bool? value) =>
      setField<bool>('aceita_info_whatsapp', value);

  String? get profissao => getField<String>('profissao');
  set profissao(String? value) => setField<String>('profissao', value);

  bool? get telefoneInvalido => getField<bool>('telefone_invalido');
  set telefoneInvalido(bool? value) =>
      setField<bool>('telefone_invalido', value);

  DateTime? get enviadaMsgAniversario =>
      getField<DateTime>('enviada_msg_aniversario');
  set enviadaMsgAniversario(DateTime? value) =>
      setField<DateTime>('enviada_msg_aniversario', value);

  DateTime? get enviadaMsgProfissao =>
      getField<DateTime>('enviada_msg_profissao');
  set enviadaMsgProfissao(DateTime? value) =>
      setField<DateTime>('enviada_msg_profissao', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);
}
