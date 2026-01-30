import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'op_widget.dart' show OpWidget;
import 'package:flutter/material.dart';

class OpModel extends FlutterFlowModel<OpWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Stores action output result for [Backend Call - Query Rows] action in RadioButton widget.
  List<SurveyResponsesRow>? encontrouResposta;
  // Stores action output result for [Backend Call - Query Rows] action in RadioButton widget.
  List<SurveyResponsesRow>? encontrouResposta2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
