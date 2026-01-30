import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get partido => getField<String>('partido');
  set partido(String? value) => setField<String>('partido', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get numEndereco => getField<String>('numEndereco');
  set numEndereco(String? value) => setField<String>('numEndereco', value);

  String? get cargoDisputa => getField<String>('cargoDisputa');
  set cargoDisputa(String? value) => setField<String>('cargoDisputa', value);

  String? get formacaoEscolar => getField<String>('formacaoEscolar');
  set formacaoEscolar(String? value) =>
      setField<String>('formacaoEscolar', value);

  String? get chave => getField<String>('chave');
  set chave(String? value) => setField<String>('chave', value);

  String? get time => getField<String>('time');
  set time(String? value) => setField<String>('time', value);

  String? get religiao => getField<String>('religiao');
  set religiao(String? value) => setField<String>('religiao', value);

  bool? get onboarding => getField<bool>('onboarding');
  set onboarding(bool? value) => setField<bool>('onboarding', value);

  String? get sexo => getField<String>('sexo');
  set sexo(String? value) => setField<String>('sexo', value);

  double? get saldoCampanha => getField<double>('saldoCampanha');
  set saldoCampanha(double? value) => setField<double>('saldoCampanha', value);

  String? get idCidade => getField<String>('idCidade');
  set idCidade(String? value) => setField<String>('idCidade', value);

  String? get idUF => getField<String>('idUF');
  set idUF(String? value) => setField<String>('idUF', value);

  String? get cargo => getField<String>('cargo');
  set cargo(String? value) => setField<String>('cargo', value);

  bool? get finalizouCadastro => getField<bool>('finalizouCadastro');
  set finalizouCadastro(bool? value) =>
      setField<bool>('finalizouCadastro', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  String? get plano => getField<String>('plano');
  set plano(String? value) => setField<String>('plano', value);

  int? get countTrial => getField<int>('countTrial');
  set countTrial(int? value) => setField<int>('countTrial', value);

  String? get customerIdAsaas => getField<String>('customerIdAsaas');
  set customerIdAsaas(String? value) =>
      setField<String>('customerIdAsaas', value);

  DateTime? get dataVencimentoPlano =>
      getField<DateTime>('dataVencimentoPlano');
  set dataVencimentoPlano(DateTime? value) =>
      setField<DateTime>('dataVencimentoPlano', value);

  bool? get termosDeUso => getField<bool>('termosDeUso');
  set termosDeUso(bool? value) => setField<bool>('termosDeUso', value);

  int? get countChatAi => getField<int>('countChatAi');
  set countChatAi(int? value) => setField<int>('countChatAi', value);

  DateTime? get dataNascimento => getField<DateTime>('dataNascimento');
  set dataNascimento(DateTime? value) =>
      setField<DateTime>('dataNascimento', value);

  bool? get politicaPrivacidade => getField<bool>('politicaPrivacidade');
  set politicaPrivacidade(bool? value) =>
      setField<bool>('politicaPrivacidade', value);

  DateTime? get dataAceitePrivacidade =>
      getField<DateTime>('dataAceitePrivacidade');
  set dataAceitePrivacidade(DateTime? value) =>
      setField<DateTime>('dataAceitePrivacidade', value);

  DateTime? get dataAceiteTermos => getField<DateTime>('dataAceiteTermos');
  set dataAceiteTermos(DateTime? value) =>
      setField<DateTime>('dataAceiteTermos', value);

  String? get idPgto => getField<String>('idPgto');
  set idPgto(String? value) => setField<String>('idPgto', value);

  String? get idLoja => getField<String>('idLoja');
  set idLoja(String? value) => setField<String>('idLoja', value);

  bool? get userIOS => getField<bool>('userIOS');
  set userIOS(bool? value) => setField<bool>('userIOS', value);

  String? get linkGrpWhats => getField<String>('linkGrpWhats');
  set linkGrpWhats(String? value) => setField<String>('linkGrpWhats', value);

  bool? get lojista => getField<bool>('lojista');
  set lojista(bool? value) => setField<bool>('lojista', value);

  bool? get politico => getField<bool>('politico');
  set politico(bool? value) => setField<bool>('politico', value);

  bool? get apoiador => getField<bool>('apoiador');
  set apoiador(bool? value) => setField<bool>('apoiador', value);

  String? get politicoId => getField<String>('politico_id');
  set politicoId(String? value) => setField<String>('politico_id', value);

  String? get fcmToken => getField<String>('fcm_token');
  set fcmToken(String? value) => setField<String>('fcm_token', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  bool? get aviso => getField<bool>('aviso');
  set aviso(bool? value) => setField<bool>('aviso', value);

  String? get codIndicacao => getField<String>('cod_indicacao');
  set codIndicacao(String? value) => setField<String>('cod_indicacao', value);

  String? get codImportacao => getField<String>('cod_importacao');
  set codImportacao(String? value) => setField<String>('cod_importacao', value);

  String? get profissao => getField<String>('profissao');
  set profissao(String? value) => setField<String>('profissao', value);

  bool? get telefoneInvalido => getField<bool>('telefone_invalido');
  set telefoneInvalido(bool? value) =>
      setField<bool>('telefone_invalido', value);

  DateTime? get enviadaMsgProfissao =>
      getField<DateTime>('enviada_msg_profissao');
  set enviadaMsgProfissao(DateTime? value) =>
      setField<DateTime>('enviada_msg_profissao', value);

  String? get forca1 => getField<String>('forca_1');
  set forca1(String? value) => setField<String>('forca_1', value);

  String? get forca2 => getField<String>('forca_2');
  set forca2(String? value) => setField<String>('forca_2', value);

  String? get forca3 => getField<String>('forca_3');
  set forca3(String? value) => setField<String>('forca_3', value);

  String? get fraqueza1 => getField<String>('fraqueza_1');
  set fraqueza1(String? value) => setField<String>('fraqueza_1', value);

  String? get fraqueza2 => getField<String>('fraqueza_2');
  set fraqueza2(String? value) => setField<String>('fraqueza_2', value);

  String? get fraqueza3 => getField<String>('fraqueza_3');
  set fraqueza3(String? value) => setField<String>('fraqueza_3', value);

  String? get oportunidade1 => getField<String>('oportunidade_1');
  set oportunidade1(String? value) => setField<String>('oportunidade_1', value);

  String? get oportunidade2 => getField<String>('oportunidade_2');
  set oportunidade2(String? value) => setField<String>('oportunidade_2', value);

  String? get oportunidade3 => getField<String>('oportunidade_3');
  set oportunidade3(String? value) => setField<String>('oportunidade_3', value);

  String? get ameaca1 => getField<String>('ameaca_1');
  set ameaca1(String? value) => setField<String>('ameaca_1', value);

  String? get ameaca2 => getField<String>('ameaca_2');
  set ameaca2(String? value) => setField<String>('ameaca_2', value);

  String? get ameaca3 => getField<String>('ameaca_3');
  set ameaca3(String? value) => setField<String>('ameaca_3', value);

  bool? get criadoSwot => getField<bool>('criado_swot');
  set criadoSwot(bool? value) => setField<bool>('criado_swot', value);

  String? get acoesCombate => getField<String>('acoes_combate');
  set acoesCombate(String? value) => setField<String>('acoes_combate', value);

  String? get comoExplorar => getField<String>('como_explorar');
  set comoExplorar(String? value) => setField<String>('como_explorar', value);

  String? get comoImplementar => getField<String>('como_implementar');
  set comoImplementar(String? value) =>
      setField<String>('como_implementar', value);

  String? get comoCombater => getField<String>('como_combater');
  set comoCombater(String? value) => setField<String>('como_combater', value);

  String? get linkInstagram => getField<String>('link_instagram');
  set linkInstagram(String? value) => setField<String>('link_instagram', value);
}
