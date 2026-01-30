import '../database.dart';

class CursosTable extends SupabaseTable<CursosRow> {
  @override
  String get tableName => 'cursos';

  @override
  CursosRow createRow(Map<String, dynamic> data) => CursosRow(data);
}

class CursosRow extends SupabaseDataRow {
  CursosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CursosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);

  bool? get gratis => getField<bool>('gratis');
  set gratis(bool? value) => setField<bool>('gratis', value);

  int? get avaliacao => getField<int>('avaliacao');
  set avaliacao(int? value) => setField<int>('avaliacao', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);

  int? get categoriaId => getField<int>('categoria_id');
  set categoriaId(int? value) => setField<int>('categoria_id', value);

  bool? get visivel => getField<bool>('visivel');
  set visivel(bool? value) => setField<bool>('visivel', value);

  String? get descCurta => getField<String>('desc_curta');
  set descCurta(String? value) => setField<String>('desc_curta', value);

  String? get fotoCapa => getField<String>('foto_capa');
  set fotoCapa(String? value) => setField<String>('foto_capa', value);

  String? get nomeProfessor => getField<String>('nome_professor');
  set nomeProfessor(String? value) => setField<String>('nome_professor', value);

  String? get fotoProfessor => getField<String>('foto_professor');
  set fotoProfessor(String? value) => setField<String>('foto_professor', value);

  String? get descProfessor => getField<String>('desc_professor');
  set descProfessor(String? value) => setField<String>('desc_professor', value);

  double? get valorPromocional => getField<double>('valor_promocional');
  set valorPromocional(double? value) =>
      setField<double>('valor_promocional', value);

  String? get periodoAcesso => getField<String>('periodo_acesso');
  set periodoAcesso(String? value) => setField<String>('periodo_acesso', value);

  List<String> get topicosAprendizado =>
      getListField<String>('topicos_aprendizado');
  set topicosAprendizado(List<String>? value) =>
      setListField<String>('topicos_aprendizado', value);

  String? get profissaoProfessor => getField<String>('profissao_professor');
  set profissaoProfessor(String? value) =>
      setField<String>('profissao_professor', value);

  String? get cupom => getField<String>('cupom');
  set cupom(String? value) => setField<String>('cupom', value);

  bool? get instrutor => getField<bool>('instrutor');
  set instrutor(bool? value) => setField<bool>('instrutor', value);

  int? get qtdCliques => getField<int>('qtd_cliques');
  set qtdCliques(int? value) => setField<int>('qtd_cliques', value);

  bool? get assinatura => getField<bool>('assinatura');
  set assinatura(bool? value) => setField<bool>('assinatura', value);

  List<double> get valores => getListField<double>('valores');
  set valores(List<double>? value) => setListField<double>('valores', value);

  double? get valorAssinatura => getField<double>('valor_assinatura');
  set valorAssinatura(double? value) =>
      setField<double>('valor_assinatura', value);

  String? get descricaoAssinatura => getField<String>('descricao_assinatura');
  set descricaoAssinatura(String? value) =>
      setField<String>('descricao_assinatura', value);
}
