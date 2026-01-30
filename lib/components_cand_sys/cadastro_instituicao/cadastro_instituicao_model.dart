import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cadastro_instituicao_widget.dart' show CadastroInstituicaoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastroInstituicaoModel
    extends FlutterFlowModel<CadastroInstituicaoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NomePresidente widget.
  FocusNode? nomePresidenteFocusNode;
  TextEditingController? nomePresidenteTextController;
  String? Function(BuildContext, String?)?
      nomePresidenteTextControllerValidator;
  String? _nomePresidenteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor preencher o nome do presidente';
    }

    return null;
  }

  // State field(s) for nomeInstituicao widget.
  FocusNode? nomeInstituicaoFocusNode;
  TextEditingController? nomeInstituicaoTextController;
  String? Function(BuildContext, String?)?
      nomeInstituicaoTextControllerValidator;
  String? _nomeInstituicaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor preencher o nome da instituição';
    }

    return null;
  }

  // State field(s) for TelefoneFixo widget.
  FocusNode? telefoneFixoFocusNode;
  TextEditingController? telefoneFixoTextController;
  late MaskTextInputFormatter telefoneFixoMask;
  String? Function(BuildContext, String?)? telefoneFixoTextControllerValidator;
  // State field(s) for celular widget.
  FocusNode? celularFocusNode;
  TextEditingController? celularTextController;
  late MaskTextInputFormatter celularMask;
  String? Function(BuildContext, String?)? celularTextControllerValidator;
  // State field(s) for EmailApoiador widget.
  FocusNode? emailApoiadorFocusNode;
  TextEditingController? emailApoiadorTextController;
  String? Function(BuildContext, String?)? emailApoiadorTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for DescricaoAniversario widget.
  FocusNode? descricaoAniversarioFocusNode;
  TextEditingController? descricaoAniversarioTextController;
  String? Function(BuildContext, String?)?
      descricaoAniversarioTextControllerValidator;
  // State field(s) for RadioButtonAniversario widget.
  FormFieldController<String>? radioButtonAniversarioValueController;
  DateTime? datePicked2;
  // State field(s) for DescricaoEvento widget.
  FocusNode? descricaoEventoFocusNode;
  TextEditingController? descricaoEventoTextController;
  String? Function(BuildContext, String?)?
      descricaoEventoTextControllerValidator;
  // State field(s) for RadioButtonEvento widget.
  FormFieldController<String>? radioButtonEventoValueController;
  DateTime? datePicked3;
  // State field(s) for DescricaoImp widget.
  FocusNode? descricaoImpFocusNode;
  TextEditingController? descricaoImpTextController;
  String? Function(BuildContext, String?)? descricaoImpTextControllerValidator;
  // State field(s) for RadioButtonImp widget.
  FormFieldController<String>? radioButtonImpValueController;
  DateTime? datePicked4;
  // State field(s) for DescricaoImp2 widget.
  FocusNode? descricaoImp2FocusNode;
  TextEditingController? descricaoImp2TextController;
  String? Function(BuildContext, String?)? descricaoImp2TextControllerValidator;
  // State field(s) for RadioButtonImp2 widget.
  FormFieldController<String>? radioButtonImp2ValueController;
  // State field(s) for Cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepTextController;
  late MaskTextInputFormatter cepMask;
  String? Function(BuildContext, String?)? cepTextControllerValidator;
  String? _cepTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor preencher o cep';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Busca endereco pelo CEP)] action in Button widget.
  ApiCallResponse? apiResultCep;
  // State field(s) for endereco widget.
  FocusNode? enderecoFocusNode;
  TextEditingController? enderecoTextController;
  String? Function(BuildContext, String?)? enderecoTextControllerValidator;
  // State field(s) for NumEnd widget.
  FocusNode? numEndFocusNode;
  TextEditingController? numEndTextController;
  String? Function(BuildContext, String?)? numEndTextControllerValidator;
  String? _numEndTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Preencher o número';
    }

    return null;
  }

  // State field(s) for Bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroTextController;
  String? Function(BuildContext, String?)? bairroTextControllerValidator;
  // State field(s) for Cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeTextController;
  String? Function(BuildContext, String?)? cidadeTextControllerValidator;
  // State field(s) for UF widget.
  FocusNode? ufFocusNode;
  TextEditingController? ufTextController;
  String? Function(BuildContext, String?)? ufTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  InstituicoesRow? instituicaoCriadaAss;

  @override
  void initState(BuildContext context) {
    nomePresidenteTextControllerValidator =
        _nomePresidenteTextControllerValidator;
    nomeInstituicaoTextControllerValidator =
        _nomeInstituicaoTextControllerValidator;
    cepTextControllerValidator = _cepTextControllerValidator;
    numEndTextControllerValidator = _numEndTextControllerValidator;
  }

  @override
  void dispose() {
    nomePresidenteFocusNode?.dispose();
    nomePresidenteTextController?.dispose();

    nomeInstituicaoFocusNode?.dispose();
    nomeInstituicaoTextController?.dispose();

    telefoneFixoFocusNode?.dispose();
    telefoneFixoTextController?.dispose();

    celularFocusNode?.dispose();
    celularTextController?.dispose();

    emailApoiadorFocusNode?.dispose();
    emailApoiadorTextController?.dispose();

    descricaoAniversarioFocusNode?.dispose();
    descricaoAniversarioTextController?.dispose();

    descricaoEventoFocusNode?.dispose();
    descricaoEventoTextController?.dispose();

    descricaoImpFocusNode?.dispose();
    descricaoImpTextController?.dispose();

    descricaoImp2FocusNode?.dispose();
    descricaoImp2TextController?.dispose();

    cepFocusNode?.dispose();
    cepTextController?.dispose();

    enderecoFocusNode?.dispose();
    enderecoTextController?.dispose();

    numEndFocusNode?.dispose();
    numEndTextController?.dispose();

    bairroFocusNode?.dispose();
    bairroTextController?.dispose();

    cidadeFocusNode?.dispose();
    cidadeTextController?.dispose();

    ufFocusNode?.dispose();
    ufTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonAniversarioValue =>
      radioButtonAniversarioValueController?.value;
  String? get radioButtonEventoValue => radioButtonEventoValueController?.value;
  String? get radioButtonImpValue => radioButtonImpValueController?.value;
  String? get radioButtonImp2Value => radioButtonImp2ValueController?.value;
}
