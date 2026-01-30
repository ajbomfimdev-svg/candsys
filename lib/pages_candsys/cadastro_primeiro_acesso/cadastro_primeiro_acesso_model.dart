import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'cadastro_primeiro_acesso_widget.dart' show CadastroPrimeiroAcessoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastroPrimeiroAcessoModel
    extends FlutterFlowModel<CadastroPrimeiroAcessoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in cadastroPrimeiroAcesso widget.
  List<UsersRow>? user;
  // Stores action output result for [Backend Call - Query Rows] action in cadastroPrimeiroAcesso widget.
  List<AcessoresRow>? resultadoVerificacao;
  // State field(s) for NomeCompleto widget.
  FocusNode? nomeCompletoFocusNode;
  TextEditingController? nomeCompletoTextController;
  String? Function(BuildContext, String?)? nomeCompletoTextControllerValidator;
  String? _nomeCompletoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor informar o nome completo.';
    }

    return null;
  }

  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  late MaskTextInputFormatter cpfMask;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for Telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  late MaskTextInputFormatter telefoneMask;
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  // State field(s) for DDFormacaoEscolar widget.
  String? dDFormacaoEscolarValue;
  FormFieldController<String>? dDFormacaoEscolarValueController;
  // State field(s) for profissao widget.
  String? profissaoValue;
  FormFieldController<String>? profissaoValueController;
  // State field(s) for religiao widget.
  String? religiaoValue;
  FormFieldController<String>? religiaoValueController;
  // State field(s) for TimeApoiador widget.
  String? timeApoiadorValue;
  FormFieldController<String>? timeApoiadorValueController;
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
  // State field(s) for CEPResidencia widget.
  FocusNode? cEPResidenciaFocusNode;
  TextEditingController? cEPResidenciaTextController;
  late MaskTextInputFormatter cEPResidenciaMask;
  String? Function(BuildContext, String?)? cEPResidenciaTextControllerValidator;
  // Stores action output result for [Backend Call - API (Busca endereco pelo CEP)] action in Button widget.
  ApiCallResponse? apiResultCep;
  // State field(s) for endereco widget.
  FocusNode? enderecoFocusNode;
  TextEditingController? enderecoTextController;
  String? Function(BuildContext, String?)? enderecoTextControllerValidator;
  // State field(s) for numResidencia widget.
  FocusNode? numResidenciaFocusNode;
  TextEditingController? numResidenciaTextController;
  String? Function(BuildContext, String?)? numResidenciaTextControllerValidator;
  // State field(s) for bairroResidencia widget.
  FocusNode? bairroResidenciaFocusNode;
  TextEditingController? bairroResidenciaTextController;
  String? Function(BuildContext, String?)?
      bairroResidenciaTextControllerValidator;
  // State field(s) for cidadeResidencia widget.
  FocusNode? cidadeResidenciaFocusNode;
  TextEditingController? cidadeResidenciaTextController;
  String? Function(BuildContext, String?)?
      cidadeResidenciaTextControllerValidator;
  // State field(s) for ufResidencia widget.
  FocusNode? ufResidenciaFocusNode;
  TextEditingController? ufResidenciaTextController;
  String? Function(BuildContext, String?)? ufResidenciaTextControllerValidator;
  // Stores action output result for [Backend Call - API (Asaas Customer)] action in Button widget.
  ApiCallResponse? codClienteAsaas;

  @override
  void initState(BuildContext context) {
    nomeCompletoTextControllerValidator = _nomeCompletoTextControllerValidator;
  }

  @override
  void dispose() {
    nomeCompletoFocusNode?.dispose();
    nomeCompletoTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    cEPResidenciaFocusNode?.dispose();
    cEPResidenciaTextController?.dispose();

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
