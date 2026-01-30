import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'responder_enquete_widget.dart' show ResponderEnqueteWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ResponderEnqueteModel extends FlutterFlowModel<ResponderEnqueteWidget> {
  ///  Local state fields for this page.

  List<SurveyResponsesRow> respostas = [];
  void addToRespostas(SurveyResponsesRow item) => respostas.add(item);
  void removeFromRespostas(SurveyResponsesRow item) => respostas.remove(item);
  void removeAtIndexFromRespostas(int index) => respostas.removeAt(index);
  void insertAtIndexInRespostas(int index, SurveyResponsesRow item) =>
      respostas.insert(index, item);
  void updateRespostasAtIndex(
          int index, Function(SurveyResponsesRow) updateFn) =>
      respostas[index] = updateFn(respostas[index]);

  String? referenciaPesquisa;

  int index = 0;

  Set<String> respostaChaves = {};
  void addToRespostaChaves(String item) => respostaChaves.add(item);
  void removeFromRespostaChaves(String item) => respostaChaves.remove(item);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Insert Row] action in Container widget.
  SurveyResponsesRow? resposta;
  // Stores action output result for [Backend Call - Insert Row] action in Container widget.
  SurveyResponsesRow? resposta2;
  // Stores action output result for [Backend Call - Insert Row] action in Container widget.
  SurveyResponsesRow? resposta3;
  // Stores action output result for [Backend Call - Insert Row] action in Container widget.
  SurveyResponsesRow? resposta4;
  // State field(s) for Checkbox widget.
  Map<String, bool> checkboxValueMap1 = {};
  List<String> get checkboxCheckedItems1 => checkboxValueMap1.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  late MaskTextInputFormatter telefoneMask;
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  // State field(s) for obs widget.
  FocusNode? obsFocusNode;
  TextEditingController? obsTextController;
  String? Function(BuildContext, String?)? obsTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    obsFocusNode?.dispose();
    obsTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController5?.dispose();
  }
}
