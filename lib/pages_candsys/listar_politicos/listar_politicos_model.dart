import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'listar_politicos_widget.dart' show ListarPoliticosWidget;
import 'package:flutter/material.dart';

class ListarPoliticosModel extends FlutterFlowModel<ListarPoliticosWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (BuscarDeputados)] action in IconButton widget.
  ApiCallResponse? apiResultj8g;
  // State field(s) for federal widget.
  String? federalValue;
  FormFieldController<String>? federalValueController;
  // Stores action output result for [Backend Call - API (DetalhesDeputado)] action in Icon widget.
  ApiCallResponse? apiResultDetDep;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
