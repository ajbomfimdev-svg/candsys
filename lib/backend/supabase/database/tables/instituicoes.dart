import '../database.dart';

class InstituicoesTable extends SupabaseTable<InstituicoesRow> {
  @override
  String get tableName => 'instituicoes';

  @override
  InstituicoesRow createRow(Map<String, dynamic> data) => InstituicoesRow(data);
}

class InstituicoesRow extends SupabaseDataRow {
  InstituicoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InstituicoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomePresidente => getField<String>('nomePresidente');
  set nomePresidente(String? value) =>
      setField<String>('nomePresidente', value);

  String? get nomeInstituicao => getField<String>('nomeInstituicao');
  set nomeInstituicao(String? value) =>
      setField<String>('nomeInstituicao', value);

  String? get telefoneFixo => getField<String>('telefoneFixo');
  set telefoneFixo(String? value) => setField<String>('telefoneFixo', value);

  String? get celular => getField<String>('celular');
  set celular(String? value) => setField<String>('celular', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get numeroEnd => getField<String>('numeroEnd');
  set numeroEnd(String? value) => setField<String>('numeroEnd', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get politico => getField<String>('politico');
  set politico(String? value) => setField<String>('politico', value);

  DateTime? get dataFundacao => getField<DateTime>('dataFundacao');
  set dataFundacao(DateTime? value) =>
      setField<DateTime>('dataFundacao', value);

  String? get descFundacao => getField<String>('descFundacao');
  set descFundacao(String? value) => setField<String>('descFundacao', value);

  DateTime? get dataEvento => getField<DateTime>('dataEvento');
  set dataEvento(DateTime? value) => setField<DateTime>('dataEvento', value);

  String? get descEvento => getField<String>('descEvento');
  set descEvento(String? value) => setField<String>('descEvento', value);

  String? get notificacaoDataFundacao =>
      getField<String>('notificacaoDataFundacao');
  set notificacaoDataFundacao(String? value) =>
      setField<String>('notificacaoDataFundacao', value);

  String? get notificacaoDataEvento =>
      getField<String>('notificacaoDataEvento');
  set notificacaoDataEvento(String? value) =>
      setField<String>('notificacaoDataEvento', value);

  DateTime? get dataImp => getField<DateTime>('dataImp');
  set dataImp(DateTime? value) => setField<DateTime>('dataImp', value);

  String? get descImp => getField<String>('descImp');
  set descImp(String? value) => setField<String>('descImp', value);

  DateTime? get dataImp2 => getField<DateTime>('dataImp2');
  set dataImp2(DateTime? value) => setField<DateTime>('dataImp2', value);

  String? get descImp2 => getField<String>('descImp2');
  set descImp2(String? value) => setField<String>('descImp2', value);

  String? get notificacaoDataImp => getField<String>('notificacaoDataImp');
  set notificacaoDataImp(String? value) =>
      setField<String>('notificacaoDataImp', value);

  String? get notificacaoDataImp2 => getField<String>('notificacaoDataImp2');
  set notificacaoDataImp2(String? value) =>
      setField<String>('notificacaoDataImp2', value);
}
