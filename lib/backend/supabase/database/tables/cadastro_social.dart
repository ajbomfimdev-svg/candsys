import '../database.dart';

class CadastroSocialTable extends SupabaseTable<CadastroSocialRow> {
  @override
  String get tableName => 'cadastroSocial';

  @override
  CadastroSocialRow createRow(Map<String, dynamic> data) =>
      CadastroSocialRow(data);
}

class CadastroSocialRow extends SupabaseDataRow {
  CadastroSocialRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CadastroSocialTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get tipoInstituicao => getField<String>('tipoInstituicao');
  set tipoInstituicao(String? value) =>
      setField<String>('tipoInstituicao', value);

  String? get nomePresidente => getField<String>('nomePresidente');
  set nomePresidente(String? value) =>
      setField<String>('nomePresidente', value);

  String? get celularPresidente => getField<String>('celularPresidente');
  set celularPresidente(String? value) =>
      setField<String>('celularPresidente', value);

  String? get emailPresidente => getField<String>('emailPresidente');
  set emailPresidente(String? value) =>
      setField<String>('emailPresidente', value);

  String? get nomeContato => getField<String>('nomeContato');
  set nomeContato(String? value) => setField<String>('nomeContato', value);

  String? get celularContato => getField<String>('celularContato');
  set celularContato(String? value) =>
      setField<String>('celularContato', value);

  String? get emailContato => getField<String>('emailContato');
  set emailContato(String? value) => setField<String>('emailContato', value);

  String? get nomeInstituicao => getField<String>('nomeInstituicao');
  set nomeInstituicao(String? value) =>
      setField<String>('nomeInstituicao', value);

  String? get telefoneFixo => getField<String>('telefoneFixo');
  set telefoneFixo(String? value) => setField<String>('telefoneFixo', value);

  String? get celularInst => getField<String>('celularInst');
  set celularInst(String? value) => setField<String>('celularInst', value);

  String? get emailInst => getField<String>('emailInst');
  set emailInst(String? value) => setField<String>('emailInst', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get enderecoInst => getField<String>('enderecoInst');
  set enderecoInst(String? value) => setField<String>('enderecoInst', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  List<String> get desafios => getListField<String>('desafios');
  set desafios(List<String>? value) => setListField<String>('desafios', value);

  List<String> get prioridades => getListField<String>('prioridades');
  set prioridades(List<String>? value) =>
      setListField<String>('prioridades', value);

  String? get sugestoes => getField<String>('sugestoes');
  set sugestoes(String? value) => setField<String>('sugestoes', value);

  String? get possuiCand => getField<String>('possuiCand');
  set possuiCand(String? value) => setField<String>('possuiCand', value);

  String? get descCand => getField<String>('descCand');
  set descCand(String? value) => setField<String>('descCand', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get desafioOutros => getField<String>('desafioOutros');
  set desafioOutros(String? value) => setField<String>('desafioOutros', value);

  String? get prioridadesOutros => getField<String>('prioridadesOutros');
  set prioridadesOutros(String? value) =>
      setField<String>('prioridadesOutros', value);
}
