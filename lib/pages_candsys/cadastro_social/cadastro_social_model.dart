import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cadastro_social_widget.dart' show CadastroSocialWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastroSocialModel extends FlutterFlowModel<CadastroSocialWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for RBAssociacao widget.
  FormFieldController<String>? rBAssociacaoValueController;
  // State field(s) for nomePresidente widget.
  FocusNode? nomePresidenteFocusNode;
  TextEditingController? nomePresidenteTextController;
  String? Function(BuildContext, String?)?
      nomePresidenteTextControllerValidator;
  String? _nomePresidenteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o nome do presidente/diretor';
    }

    return null;
  }

  // State field(s) for celularPresidente widget.
  FocusNode? celularPresidenteFocusNode;
  TextEditingController? celularPresidenteTextController;
  late MaskTextInputFormatter celularPresidenteMask;
  String? Function(BuildContext, String?)?
      celularPresidenteTextControllerValidator;
  // State field(s) for emailPresidente widget.
  FocusNode? emailPresidenteFocusNode;
  TextEditingController? emailPresidenteTextController;
  String? Function(BuildContext, String?)?
      emailPresidenteTextControllerValidator;
  String? _emailPresidenteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o e-mail do presidente';
    }

    return null;
  }

  // State field(s) for nomeContato widget.
  FocusNode? nomeContatoFocusNode;
  TextEditingController? nomeContatoTextController;
  String? Function(BuildContext, String?)? nomeContatoTextControllerValidator;
  // State field(s) for celularContato widget.
  FocusNode? celularContatoFocusNode;
  TextEditingController? celularContatoTextController;
  late MaskTextInputFormatter celularContatoMask;
  String? Function(BuildContext, String?)?
      celularContatoTextControllerValidator;
  // State field(s) for emailContato widget.
  FocusNode? emailContatoFocusNode;
  TextEditingController? emailContatoTextController;
  String? Function(BuildContext, String?)? emailContatoTextControllerValidator;
  // State field(s) for nomeInstituicao widget.
  FocusNode? nomeInstituicaoFocusNode;
  TextEditingController? nomeInstituicaoTextController;
  String? Function(BuildContext, String?)?
      nomeInstituicaoTextControllerValidator;
  String? _nomeInstituicaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o nome da Instituição';
    }

    return null;
  }

  // State field(s) for telefoneFixoInst widget.
  FocusNode? telefoneFixoInstFocusNode;
  TextEditingController? telefoneFixoInstTextController;
  late MaskTextInputFormatter telefoneFixoInstMask;
  String? Function(BuildContext, String?)?
      telefoneFixoInstTextControllerValidator;
  // State field(s) for celularInst widget.
  FocusNode? celularInstFocusNode;
  TextEditingController? celularInstTextController;
  late MaskTextInputFormatter celularInstMask;
  String? Function(BuildContext, String?)? celularInstTextControllerValidator;
  // State field(s) for emailInst widget.
  FocusNode? emailInstFocusNode;
  TextEditingController? emailInstTextController;
  String? Function(BuildContext, String?)? emailInstTextControllerValidator;
  String? _emailInstTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o e-mail da instituição';
    }

    return null;
  }

  // State field(s) for cepinst widget.
  FocusNode? cepinstFocusNode;
  TextEditingController? cepinstTextController;
  late MaskTextInputFormatter cepinstMask;
  String? Function(BuildContext, String?)? cepinstTextControllerValidator;
  String? _cepinstTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o cep da instituição';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Busca endereco pelo CEP)] action in Button widget.
  ApiCallResponse? apiResultgx4;
  // State field(s) for enderecoInst widget.
  FocusNode? enderecoInstFocusNode;
  TextEditingController? enderecoInstTextController;
  String? Function(BuildContext, String?)? enderecoInstTextControllerValidator;
  String? _enderecoInstTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o endereço';
    }

    return null;
  }

  // State field(s) for bairroInst widget.
  FocusNode? bairroInstFocusNode;
  TextEditingController? bairroInstTextController;
  String? Function(BuildContext, String?)? bairroInstTextControllerValidator;
  String? _bairroInstTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o bairro';
    }

    return null;
  }

  // State field(s) for cidadeInst widget.
  FocusNode? cidadeInstFocusNode;
  TextEditingController? cidadeInstTextController;
  String? Function(BuildContext, String?)? cidadeInstTextControllerValidator;
  String? _cidadeInstTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe a cidade';
    }

    return null;
  }

  // State field(s) for UFinst widget.
  String? uFinstValue;
  FormFieldController<String>? uFinstValueController;
  // State field(s) for CGDesafios widget.
  FormFieldController<List<String>>? cGDesafiosValueController;
  List<String>? get cGDesafiosValues => cGDesafiosValueController?.value;
  set cGDesafiosValues(List<String>? v) => cGDesafiosValueController?.value = v;

  // State field(s) for desafiosOutros widget.
  FocusNode? desafiosOutrosFocusNode;
  TextEditingController? desafiosOutrosTextController;
  String? Function(BuildContext, String?)?
      desafiosOutrosTextControllerValidator;
  // State field(s) for CGPrioridades widget.
  FormFieldController<List<String>>? cGPrioridadesValueController;
  List<String>? get cGPrioridadesValues => cGPrioridadesValueController?.value;
  set cGPrioridadesValues(List<String>? v) =>
      cGPrioridadesValueController?.value = v;

  // State field(s) for outroPrioridades widget.
  FocusNode? outroPrioridadesFocusNode;
  TextEditingController? outroPrioridadesTextController;
  String? Function(BuildContext, String?)?
      outroPrioridadesTextControllerValidator;
  // State field(s) for sugestoes widget.
  FocusNode? sugestoesFocusNode;
  TextEditingController? sugestoesTextController;
  String? Function(BuildContext, String?)? sugestoesTextControllerValidator;
  // State field(s) for possuiCand widget.
  FormFieldController<String>? possuiCandValueController;
  // State field(s) for descCand widget.
  FocusNode? descCandFocusNode;
  TextEditingController? descCandTextController;
  String? Function(BuildContext, String?)? descCandTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  CadastroSocialRow? associacaoCriada;

  @override
  void initState(BuildContext context) {
    nomePresidenteTextControllerValidator =
        _nomePresidenteTextControllerValidator;
    emailPresidenteTextControllerValidator =
        _emailPresidenteTextControllerValidator;
    nomeInstituicaoTextControllerValidator =
        _nomeInstituicaoTextControllerValidator;
    emailInstTextControllerValidator = _emailInstTextControllerValidator;
    cepinstTextControllerValidator = _cepinstTextControllerValidator;
    enderecoInstTextControllerValidator = _enderecoInstTextControllerValidator;
    bairroInstTextControllerValidator = _bairroInstTextControllerValidator;
    cidadeInstTextControllerValidator = _cidadeInstTextControllerValidator;
  }

  @override
  void dispose() {
    nomePresidenteFocusNode?.dispose();
    nomePresidenteTextController?.dispose();

    celularPresidenteFocusNode?.dispose();
    celularPresidenteTextController?.dispose();

    emailPresidenteFocusNode?.dispose();
    emailPresidenteTextController?.dispose();

    nomeContatoFocusNode?.dispose();
    nomeContatoTextController?.dispose();

    celularContatoFocusNode?.dispose();
    celularContatoTextController?.dispose();

    emailContatoFocusNode?.dispose();
    emailContatoTextController?.dispose();

    nomeInstituicaoFocusNode?.dispose();
    nomeInstituicaoTextController?.dispose();

    telefoneFixoInstFocusNode?.dispose();
    telefoneFixoInstTextController?.dispose();

    celularInstFocusNode?.dispose();
    celularInstTextController?.dispose();

    emailInstFocusNode?.dispose();
    emailInstTextController?.dispose();

    cepinstFocusNode?.dispose();
    cepinstTextController?.dispose();

    enderecoInstFocusNode?.dispose();
    enderecoInstTextController?.dispose();

    bairroInstFocusNode?.dispose();
    bairroInstTextController?.dispose();

    cidadeInstFocusNode?.dispose();
    cidadeInstTextController?.dispose();

    desafiosOutrosFocusNode?.dispose();
    desafiosOutrosTextController?.dispose();

    outroPrioridadesFocusNode?.dispose();
    outroPrioridadesTextController?.dispose();

    sugestoesFocusNode?.dispose();
    sugestoesTextController?.dispose();

    descCandFocusNode?.dispose();
    descCandTextController?.dispose();
  }

  /// Additional helper methods.
  String? get rBAssociacaoValue => rBAssociacaoValueController?.value;
  String? get possuiCandValue => possuiCandValueController?.value;
}
