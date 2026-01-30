import '../database.dart';

class AdversariosPoliticosTable extends SupabaseTable<AdversariosPoliticosRow> {
  @override
  String get tableName => 'adversariosPoliticos';

  @override
  AdversariosPoliticosRow createRow(Map<String, dynamic> data) =>
      AdversariosPoliticosRow(data);
}

class AdversariosPoliticosRow extends SupabaseDataRow {
  AdversariosPoliticosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdversariosPoliticosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get politicoId => getField<String>('politico_id');
  set politicoId(String? value) => setField<String>('politico_id', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get idade => getField<String>('idade');
  set idade(String? value) => setField<String>('idade', value);

  String? get partido => getField<String>('partido');
  set partido(String? value) => setField<String>('partido', value);

  String? get formacao => getField<String>('formacao');
  set formacao(String? value) => setField<String>('formacao', value);

  String? get expEleitoral => getField<String>('expEleitoral');
  set expEleitoral(String? value) => setField<String>('expEleitoral', value);

  String? get estadoCivil => getField<String>('estadoCivil');
  set estadoCivil(String? value) => setField<String>('estadoCivil', value);

  String? get profissao => getField<String>('profissao');
  set profissao(String? value) => setField<String>('profissao', value);

  String? get processoJudicial => getField<String>('processoJudicial');
  set processoJudicial(String? value) =>
      setField<String>('processoJudicial', value);

  String? get sexo => getField<String>('sexo');
  set sexo(String? value) => setField<String>('sexo', value);

  String? get forca1 => getField<String>('forca1');
  set forca1(String? value) => setField<String>('forca1', value);

  String? get forca2 => getField<String>('forca2');
  set forca2(String? value) => setField<String>('forca2', value);

  String? get forca3 => getField<String>('forca3');
  set forca3(String? value) => setField<String>('forca3', value);

  String? get fraqueza1 => getField<String>('fraqueza1');
  set fraqueza1(String? value) => setField<String>('fraqueza1', value);

  String? get fraqueza2 => getField<String>('fraqueza2');
  set fraqueza2(String? value) => setField<String>('fraqueza2', value);

  String? get fraqueza3 => getField<String>('fraqueza3');
  set fraqueza3(String? value) => setField<String>('fraqueza3', value);

  String? get op1 => getField<String>('op1');
  set op1(String? value) => setField<String>('op1', value);

  String? get op2 => getField<String>('op2');
  set op2(String? value) => setField<String>('op2', value);

  String? get op3 => getField<String>('op3');
  set op3(String? value) => setField<String>('op3', value);

  String? get ameaca1 => getField<String>('ameaca1');
  set ameaca1(String? value) => setField<String>('ameaca1', value);

  String? get ameaca2 => getField<String>('ameaca2');
  set ameaca2(String? value) => setField<String>('ameaca2', value);

  String? get ameaca3 => getField<String>('ameaca3');
  set ameaca3(String? value) => setField<String>('ameaca3', value);

  bool? get criadoSwot => getField<bool>('criadoSwot');
  set criadoSwot(bool? value) => setField<bool>('criadoSwot', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  String? get acoesForca => getField<String>('acoes_forca');
  set acoesForca(String? value) => setField<String>('acoes_forca', value);

  String? get explorarFraqueza => getField<String>('explorar_fraqueza');
  set explorarFraqueza(String? value) =>
      setField<String>('explorar_fraqueza', value);

  String? get implementarOportunidade =>
      getField<String>('implementar_oportunidade');
  set implementarOportunidade(String? value) =>
      setField<String>('implementar_oportunidade', value);

  String? get combaterAmeaca => getField<String>('combater_ameaca');
  set combaterAmeaca(String? value) =>
      setField<String>('combater_ameaca', value);
}
