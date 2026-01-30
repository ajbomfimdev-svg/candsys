import '../database.dart';

class RepresentantesTable extends SupabaseTable<RepresentantesRow> {
  @override
  String get tableName => 'representantes';

  @override
  RepresentantesRow createRow(Map<String, dynamic> data) =>
      RepresentantesRow(data);
}

class RepresentantesRow extends SupabaseDataRow {
  RepresentantesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RepresentantesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get codigo => getField<String>('codigo');
  set codigo(String? value) => setField<String>('codigo', value);

  String? get codRepr => getField<String>('cod_repr');
  set codRepr(String? value) => setField<String>('cod_repr', value);

  bool? get aceite => getField<bool>('aceite');
  set aceite(bool? value) => setField<bool>('aceite', value);

  String? get end => getField<String>('end');
  set end(String? value) => setField<String>('end', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);
}
