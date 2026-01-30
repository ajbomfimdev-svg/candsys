import '../database.dart';

class SloganCampanhaTable extends SupabaseTable<SloganCampanhaRow> {
  @override
  String get tableName => 'slogan_campanha';

  @override
  SloganCampanhaRow createRow(Map<String, dynamic> data) =>
      SloganCampanhaRow(data);
}

class SloganCampanhaRow extends SupabaseDataRow {
  SloganCampanhaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SloganCampanhaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get slogan => getField<String>('slogan');
  set slogan(String? value) => setField<String>('slogan', value);
}
