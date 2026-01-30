import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'resposta_aberta_publico_widget.dart' show RespostaAbertaPublicoWidget;
import 'package:flutter/material.dart';

class RespostaAbertaPublicoModel
    extends FlutterFlowModel<RespostaAbertaPublicoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in TextField widget.
  List<SurveysRow>? survey;
  // Stores action output result for [Backend Call - Query Rows] action in TextField widget.
  List<SurveyQuestionsRow>? question;
  // Stores action output result for [Backend Call - Query Rows] action in TextField widget.
  List<SurveyResponsesRow>? respostaJaRegistrada;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
