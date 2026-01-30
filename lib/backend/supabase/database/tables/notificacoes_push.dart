import '../database.dart';

class NotificacoesPushTable extends SupabaseTable<NotificacoesPushRow> {
  @override
  String get tableName => 'notificacoesPush';

  @override
  NotificacoesPushRow createRow(Map<String, dynamic> data) =>
      NotificacoesPushRow(data);
}

class NotificacoesPushRow extends SupabaseDataRow {
  NotificacoesPushRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotificacoesPushTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userDestinatario => getField<String>('userDestinatario');
  set userDestinatario(String? value) =>
      setField<String>('userDestinatario', value);

  String? get userEnviou => getField<String>('userEnviou');
  set userEnviou(String? value) => setField<String>('userEnviou', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descNotificacao => getField<String>('descNotificacao');
  set descNotificacao(String? value) =>
      setField<String>('descNotificacao', value);

  bool? get lida => getField<bool>('lida');
  set lida(bool? value) => setField<bool>('lida', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  DateTime? get dataAgendamento => getField<DateTime>('dataAgendamento');
  set dataAgendamento(DateTime? value) =>
      setField<DateTime>('dataAgendamento', value);
}
