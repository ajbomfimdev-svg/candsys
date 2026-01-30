import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'planos_ass_onboarding_bkp_widget.dart'
    show PlanosAssOnboardingBkpWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PlanosAssOnboardingBkpModel
    extends FlutterFlowModel<PlanosAssOnboardingBkpWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for nomeCartao widget.
  FocusNode? nomeCartaoFocusNode;
  TextEditingController? nomeCartaoTextController;
  String? Function(BuildContext, String?)? nomeCartaoTextControllerValidator;
  // State field(s) for numeroCartao widget.
  FocusNode? numeroCartaoFocusNode;
  TextEditingController? numeroCartaoTextController;
  late MaskTextInputFormatter numeroCartaoMask;
  String? Function(BuildContext, String?)? numeroCartaoTextControllerValidator;
  // State field(s) for mesValidade widget.
  FocusNode? mesValidadeFocusNode;
  TextEditingController? mesValidadeTextController;
  late MaskTextInputFormatter mesValidadeMask;
  String? Function(BuildContext, String?)? mesValidadeTextControllerValidator;
  // State field(s) for anoValidade widget.
  FocusNode? anoValidadeFocusNode;
  TextEditingController? anoValidadeTextController;
  late MaskTextInputFormatter anoValidadeMask;
  String? Function(BuildContext, String?)? anoValidadeTextControllerValidator;
  // State field(s) for cvvCartao widget.
  FocusNode? cvvCartaoFocusNode;
  TextEditingController? cvvCartaoTextController;
  late MaskTextInputFormatter cvvCartaoMask;
  String? Function(BuildContext, String?)? cvvCartaoTextControllerValidator;
  // Stores action output result for [Backend Call - API (Asaas Assinatura)] action in Button90 widget.
  ApiCallResponse? apiResultfdx;
  // Stores action output result for [Backend Call - API (Asaas Cobranca)] action in Button90 widget.
  ApiCallResponse? apiResultfuu;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
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
