import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'checkout_curso_widget.dart' show CheckoutCursoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CheckoutCursoModel extends FlutterFlowModel<CheckoutCursoWidget> {
  ///  State fields for stateful widgets in this component.

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
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? user;
  // Stores action output result for [Backend Call - API (Asaas Customer)] action in Button widget.
  ApiCallResponse? apiResulttp9;
  // Stores action output result for [Backend Call - API (Asaas Assinatura)] action in Button widget.
  ApiCallResponse? apiResultfdxer;
  // Stores action output result for [Backend Call - API (Asaas Cobranca)] action in Button widget.
  ApiCallResponse? apiResultfuuCurso;

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
