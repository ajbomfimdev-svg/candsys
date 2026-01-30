import '/flutter_flow/flutter_flow_util.dart';
import 'edit_pergunta_widget.dart' show EditPerguntaWidget;
import 'package:flutter/material.dart';

class EditPerguntaModel extends FlutterFlowModel<EditPerguntaWidget> {
  ///  Local state fields for this component.

  List<String> opcoes = [];
  void addToOpcoes(String item) => opcoes.add(item);
  void removeFromOpcoes(String item) => opcoes.remove(item);
  void removeAtIndexFromOpcoes(int index) => opcoes.removeAt(index);
  void insertAtIndexInOpcoes(int index, String item) =>
      opcoes.insert(index, item);
  void updateOpcoesAtIndex(int index, Function(String) updateFn) =>
      opcoes[index] = updateFn(opcoes[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for titulo widget.
  FocusNode? tituloFocusNode;
  TextEditingController? tituloTextController;
  String? Function(BuildContext, String?)? tituloTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tituloFocusNode?.dispose();
    tituloTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}
