import '../database.dart';

class PrecosTable extends SupabaseTable<PrecosRow> {
  @override
  String get tableName => 'precos';

  @override
  PrecosRow createRow(Map<String, dynamic> data) => PrecosRow(data);
}

class PrecosRow extends SupabaseDataRow {
  PrecosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PrecosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get tipo => getField<String>('tipo')!;
  set tipo(String value) => setField<String>('tipo', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);
}
