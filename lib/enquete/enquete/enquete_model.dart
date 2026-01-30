import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'enquete_widget.dart' show EnqueteWidget;
import 'package:flutter/material.dart';

class EnqueteModel extends FlutterFlowModel<EnqueteWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Enquete widget.
  List<AcessoresRow>? dadosAcessor;
  Stream<List<SurveysRow>>? containerSupabaseStream;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
