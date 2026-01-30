import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'detalhes_perfil_politico_widget.dart' show DetalhesPerfilPoliticoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class DetalhesPerfilPoliticoModel
    extends FlutterFlowModel<DetalhesPerfilPoliticoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NomeCompleto widget.
  FocusNode? nomeCompletoFocusNode;
  TextEditingController? nomeCompletoTextController;
  String? Function(BuildContext, String?)? nomeCompletoTextControllerValidator;
  String? _nomeCompletoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor informar o nome completo.';
    }

    if (val.length < 10) {
      return 'Requires at least 10 characters.';
    }

    return null;
  }

  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  late MaskTextInputFormatter cpfMask;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  String? _cpfTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor informar o CPF.';
    }

    return null;
  }

  // State field(s) for Telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  late MaskTextInputFormatter telefoneMask;
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  String? _telefoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor informar o telefone.';
    }

    if (val.length < 11) {
      return 'Requires at least 11 characters.';
    }

    return null;
  }

  // State field(s) for DDFormacaoEscolar widget.
  String? dDFormacaoEscolarValue;
  FormFieldController<String>? dDFormacaoEscolarValueController;
  // State field(s) for profissao widget.
  String? profissaoValue;
  FormFieldController<String>? profissaoValueController;
  // State field(s) for religiao widget.
  FocusNode? religiaoFocusNode;
  TextEditingController? religiaoTextController;
  String? Function(BuildContext, String?)? religiaoTextControllerValidator;
  // State field(s) for ChoiceChipsSexo widget.
  FormFieldController<List<String>>? choiceChipsSexoValueController;
  String? get choiceChipsSexoValue =>
      choiceChipsSexoValueController?.value?.firstOrNull;
  set choiceChipsSexoValue(String? val) =>
      choiceChipsSexoValueController?.value = val != null ? [val] : [];
  // State field(s) for Partido widget.
  String? partidoValue;
  FormFieldController<String>? partidoValueController;
  // State field(s) for Cargo widget.
  String? cargoValue;
  FormFieldController<String>? cargoValueController;
  // State field(s) for cepResidencia widget.
  FocusNode? cepResidenciaFocusNode;
  TextEditingController? cepResidenciaTextController;
  late MaskTextInputFormatter cepResidenciaMask;
  String? Function(BuildContext, String?)? cepResidenciaTextControllerValidator;
  String? _cepResidenciaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o CEP';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Busca endereco pelo CEP)] action in Button widget.
  ApiCallResponse? apiResultCep2;
  // State field(s) for endereco widget.
  FocusNode? enderecoFocusNode;
  TextEditingController? enderecoTextController;
  String? Function(BuildContext, String?)? enderecoTextControllerValidator;
  String? _enderecoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor informar o endereço.';
    }

    return null;
  }

  // State field(s) for numResidencia widget.
  FocusNode? numResidenciaFocusNode;
  TextEditingController? numResidenciaTextController;
  String? Function(BuildContext, String?)? numResidenciaTextControllerValidator;
  String? _numResidenciaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor informar o número da residência.';
    }

    return null;
  }

  // State field(s) for bairroResidencia widget.
  FocusNode? bairroResidenciaFocusNode;
  TextEditingController? bairroResidenciaTextController;
  String? Function(BuildContext, String?)?
      bairroResidenciaTextControllerValidator;
  String? _bairroResidenciaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o bairro';
    }

    return null;
  }

  // State field(s) for cidadeResidencia widget.
  FocusNode? cidadeResidenciaFocusNode;
  TextEditingController? cidadeResidenciaTextController;
  String? Function(BuildContext, String?)?
      cidadeResidenciaTextControllerValidator;
  // State field(s) for ufResidencia widget.
  FocusNode? ufResidenciaFocusNode;
  TextEditingController? ufResidenciaTextController;
  String? Function(BuildContext, String?)? ufResidenciaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    nomeCompletoTextControllerValidator = _nomeCompletoTextControllerValidator;
    cpfTextControllerValidator = _cpfTextControllerValidator;
    telefoneTextControllerValidator = _telefoneTextControllerValidator;
    cepResidenciaTextControllerValidator =
        _cepResidenciaTextControllerValidator;
    enderecoTextControllerValidator = _enderecoTextControllerValidator;
    numResidenciaTextControllerValidator =
        _numResidenciaTextControllerValidator;
    bairroResidenciaTextControllerValidator =
        _bairroResidenciaTextControllerValidator;
  }

  @override
  void dispose() {
    nomeCompletoFocusNode?.dispose();
    nomeCompletoTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    religiaoFocusNode?.dispose();
    religiaoTextController?.dispose();

    cepResidenciaFocusNode?.dispose();
    cepResidenciaTextController?.dispose();

    enderecoFocusNode?.dispose();
    enderecoTextController?.dispose();

    numResidenciaFocusNode?.dispose();
    numResidenciaTextController?.dispose();

    bairroResidenciaFocusNode?.dispose();
    bairroResidenciaTextController?.dispose();

    cidadeResidenciaFocusNode?.dispose();
    cidadeResidenciaTextController?.dispose();

    ufResidenciaFocusNode?.dispose();
    ufResidenciaTextController?.dispose();
  }
}
