import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'perfil_politico_widget.dart' show PerfilPoliticoWidget;
import 'package:flutter/material.dart';

class PerfilPoliticoModel extends FlutterFlowModel<PerfilPoliticoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<AssinaturasRow>? retornoAssinaturaCancelar;
  // Stores action output result for [Backend Call - API (Cancelar Assinatura)] action in Container widget.
  ApiCallResponse? apiResultAssinatura;
  // Stores action output result for [Backend Call - Query Rows] action in Text widget.
  List<UsersRow>? userPrincipal;
  // Stores action output result for [Backend Call - API (Remover cliente Asaas)] action in Text widget.
  ApiCallResponse? apiResultd4r;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
