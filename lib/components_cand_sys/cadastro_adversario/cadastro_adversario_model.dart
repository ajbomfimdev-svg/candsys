import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cadastro_adversario_widget.dart' show CadastroAdversarioWidget;
import 'package:flutter/material.dart';

class CadastroAdversarioModel
    extends FlutterFlowModel<CadastroAdversarioWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NomeCompletoAdversario widget.
  FocusNode? nomeCompletoAdversarioFocusNode;
  TextEditingController? nomeCompletoAdversarioTextController;
  String? Function(BuildContext, String?)?
      nomeCompletoAdversarioTextControllerValidator;
  String? _nomeCompletoAdversarioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor preencher o nome completo';
    }

    return null;
  }

  // State field(s) for Partido widget.
  String? partidoValue;
  FormFieldController<String>? partidoValueController;
  // State field(s) for idadeAdversario widget.
  FocusNode? idadeAdversarioFocusNode;
  TextEditingController? idadeAdversarioTextController;
  String? Function(BuildContext, String?)?
      idadeAdversarioTextControllerValidator;
  // State field(s) for DDFormacaoEscolar widget.
  String? dDFormacaoEscolarValue;
  FormFieldController<String>? dDFormacaoEscolarValueController;
  // State field(s) for DDEstadoCivil widget.
  String? dDEstadoCivilValue;
  FormFieldController<String>? dDEstadoCivilValueController;
  // State field(s) for profissaoAdversario widget.
  String? profissaoAdversarioValue;
  FormFieldController<String>? profissaoAdversarioValueController;
  // State field(s) for ProcessoJudical widget.
  FocusNode? processoJudicalFocusNode;
  TextEditingController? processoJudicalTextController;
  String? Function(BuildContext, String?)?
      processoJudicalTextControllerValidator;
  // State field(s) for DDExpEleitoral widget.
  String? dDExpEleitoralValue;
  FormFieldController<String>? dDExpEleitoralValueController;
  // State field(s) for ChoiceChipsSexo widget.
  FormFieldController<List<String>>? choiceChipsSexoValueController;
  String? get choiceChipsSexoValue =>
      choiceChipsSexoValueController?.value?.firstOrNull;
  set choiceChipsSexoValue(String? val) =>
      choiceChipsSexoValueController?.value = val != null ? [val] : [];
  // State field(s) for BairroAdversario widget.
  FocusNode? bairroAdversarioFocusNode;
  TextEditingController? bairroAdversarioTextController;
  String? Function(BuildContext, String?)?
      bairroAdversarioTextControllerValidator;
  String? _bairroAdversarioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor preencher o Bairro';
    }

    return null;
  }

  // State field(s) for DDUFAdversario widget.
  String? dDUFAdversarioValue;
  FormFieldController<String>? dDUFAdversarioValueController;
  // State field(s) for DDCidade widget.
  String? dDCidadeValue;
  FormFieldController<String>? dDCidadeValueController;
  // State field(s) for obsAdversario widget.
  FocusNode? obsAdversarioFocusNode;
  TextEditingController? obsAdversarioTextController;
  String? Function(BuildContext, String?)? obsAdversarioTextControllerValidator;

  @override
  void initState(BuildContext context) {
    nomeCompletoAdversarioTextControllerValidator =
        _nomeCompletoAdversarioTextControllerValidator;
    bairroAdversarioTextControllerValidator =
        _bairroAdversarioTextControllerValidator;
  }

  @override
  void dispose() {
    nomeCompletoAdversarioFocusNode?.dispose();
    nomeCompletoAdversarioTextController?.dispose();

    idadeAdversarioFocusNode?.dispose();
    idadeAdversarioTextController?.dispose();

    processoJudicalFocusNode?.dispose();
    processoJudicalTextController?.dispose();

    bairroAdversarioFocusNode?.dispose();
    bairroAdversarioTextController?.dispose();

    obsAdversarioFocusNode?.dispose();
    obsAdversarioTextController?.dispose();
  }
}
