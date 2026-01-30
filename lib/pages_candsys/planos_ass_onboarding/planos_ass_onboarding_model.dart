import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'planos_ass_onboarding_widget.dart' show PlanosAssOnboardingWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PlanosAssOnboardingModel
    extends FlutterFlowModel<PlanosAssOnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  late MaskTextInputFormatter cpfMask;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  String? _cpfTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for CEPResidencia widget.
  FocusNode? cEPResidenciaFocusNode;
  TextEditingController? cEPResidenciaTextController;
  late MaskTextInputFormatter cEPResidenciaMask;
  String? Function(BuildContext, String?)? cEPResidenciaTextControllerValidator;
  String? _cEPResidenciaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
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
      return 'Campo obrigatório';
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
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for nomeCartao widget.
  FocusNode? nomeCartaoFocusNode;
  TextEditingController? nomeCartaoTextController;
  String? Function(BuildContext, String?)? nomeCartaoTextControllerValidator;
  String? _nomeCartaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o nome impresso no cartão';
    }

    return null;
  }

  // State field(s) for numeroCartao widget.
  FocusNode? numeroCartaoFocusNode;
  TextEditingController? numeroCartaoTextController;
  late MaskTextInputFormatter numeroCartaoMask;
  String? Function(BuildContext, String?)? numeroCartaoTextControllerValidator;
  String? _numeroCartaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe a numeração do cartão';
    }

    return null;
  }

  // State field(s) for mesValidade widget.
  FocusNode? mesValidadeFocusNode;
  TextEditingController? mesValidadeTextController;
  late MaskTextInputFormatter mesValidadeMask;
  String? Function(BuildContext, String?)? mesValidadeTextControllerValidator;
  String? _mesValidadeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o mês';
    }

    return null;
  }

  // State field(s) for anoValidade widget.
  FocusNode? anoValidadeFocusNode;
  TextEditingController? anoValidadeTextController;
  late MaskTextInputFormatter anoValidadeMask;
  String? Function(BuildContext, String?)? anoValidadeTextControllerValidator;
  String? _anoValidadeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o ano';
    }

    if (val.length < 4) {
      return 'Ano com 4 dígitos';
    }

    return null;
  }

  // State field(s) for cvvCartao widget.
  FocusNode? cvvCartaoFocusNode;
  TextEditingController? cvvCartaoTextController;
  late MaskTextInputFormatter cvvCartaoMask;
  String? Function(BuildContext, String?)? cvvCartaoTextControllerValidator;
  String? _cvvCartaoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Código cvv ';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in Button90 widget.
  List<UsersRow>? user;
  // Stores action output result for [Backend Call - API (Asaas Customer)] action in Button90 widget.
  ApiCallResponse? customerID;
  // Stores action output result for [Backend Call - API (Asaas Assinatura)] action in Button90 widget.
  ApiCallResponse? apiResultfdx;
  // Stores action output result for [Backend Call - API (Asaas Cobranca)] action in Button90 widget.
  ApiCallResponse? apiResultfuu;

  @override
  void initState(BuildContext context) {
    cpfTextControllerValidator = _cpfTextControllerValidator;
    cEPResidenciaTextControllerValidator =
        _cEPResidenciaTextControllerValidator;
    numResidenciaTextControllerValidator =
        _numResidenciaTextControllerValidator;
    telefoneTextControllerValidator = _telefoneTextControllerValidator;
    nomeCartaoTextControllerValidator = _nomeCartaoTextControllerValidator;
    numeroCartaoTextControllerValidator = _numeroCartaoTextControllerValidator;
    mesValidadeTextControllerValidator = _mesValidadeTextControllerValidator;
    anoValidadeTextControllerValidator = _anoValidadeTextControllerValidator;
    cvvCartaoTextControllerValidator = _cvvCartaoTextControllerValidator;
  }

  @override
  void dispose() {
    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    cEPResidenciaFocusNode?.dispose();
    cEPResidenciaTextController?.dispose();

    numResidenciaFocusNode?.dispose();
    numResidenciaTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    nomeCartaoFocusNode?.dispose();
    nomeCartaoTextController?.dispose();

    numeroCartaoFocusNode?.dispose();
    numeroCartaoTextController?.dispose();

    mesValidadeFocusNode?.dispose();
    mesValidadeTextController?.dispose();

    anoValidadeFocusNode?.dispose();
    anoValidadeTextController?.dispose();

    cvvCartaoFocusNode?.dispose();
    cvvCartaoTextController?.dispose();
  }
}
