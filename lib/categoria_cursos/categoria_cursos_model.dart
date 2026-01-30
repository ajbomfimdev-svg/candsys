import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'categoria_cursos_widget.dart' show CategoriaCursosWidget;
import 'package:flutter/material.dart';

class CategoriaCursosModel extends FlutterFlowModel<CategoriaCursosWidget> {
  ///  State fields for stateful widgets in this page.

  Stream<List<CursosRow>>? categoriaCursosSupabaseStream;
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
