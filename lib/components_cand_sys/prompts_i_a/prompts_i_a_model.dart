import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'prompts_i_a_widget.dart' show PromptsIAWidget;
import 'package:flutter/material.dart';

class PromptsIAModel extends FlutterFlowModel<PromptsIAWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for duracao widget.
  String? duracaoValue;
  FormFieldController<String>? duracaoValueController;
  // State field(s) for DDUF widget.
  String? ddufValue;
  FormFieldController<String>? ddufValueController;
  // State field(s) for DDCidade widget.
  String? dDCidadeValue;
  FormFieldController<String>? dDCidadeValueController;
  // State field(s) for temaDiscurso widget.
  FocusNode? temaDiscursoFocusNode;
  TextEditingController? temaDiscursoTextController;
  String? Function(BuildContext, String?)? temaDiscursoTextControllerValidator;
  // State field(s) for comunidade widget.
  FocusNode? comunidadeFocusNode;
  TextEditingController? comunidadeTextController;
  String? Function(BuildContext, String?)? comunidadeTextControllerValidator;
  // State field(s) for Cargo widget.
  String? cargoValue;
  FormFieldController<String>? cargoValueController;
  // State field(s) for local widget.
  FocusNode? localFocusNode;
  TextEditingController? localTextController;
  String? Function(BuildContext, String?)? localTextControllerValidator;
  // State field(s) for historicoCandidato widget.
  FocusNode? historicoCandidatoFocusNode;
  TextEditingController? historicoCandidatoTextController;
  String? Function(BuildContext, String?)?
      historicoCandidatoTextControllerValidator;
  // State field(s) for valoresCandidato widget.
  FocusNode? valoresCandidatoFocusNode;
  TextEditingController? valoresCandidatoTextController;
  String? Function(BuildContext, String?)?
      valoresCandidatoTextControllerValidator;
  // State field(s) for redutoEleitoral widget.
  FocusNode? redutoEleitoralFocusNode;
  TextEditingController? redutoEleitoralTextController;
  String? Function(BuildContext, String?)?
      redutoEleitoralTextControllerValidator;
  // State field(s) for qtd widget.
  String? qtdValue;
  FormFieldController<String>? qtdValueController;
  // State field(s) for etapa widget.
  String? etapaValue;
  FormFieldController<String>? etapaValueController;
  // State field(s) for tema widget.
  FocusNode? temaFocusNode;
  TextEditingController? temaTextController;
  String? Function(BuildContext, String?)? temaTextControllerValidator;
  // State field(s) for participante1 widget.
  FocusNode? participante1FocusNode;
  TextEditingController? participante1TextController;
  String? Function(BuildContext, String?)? participante1TextControllerValidator;
  // State field(s) for CargoParticipante1 widget.
  String? cargoParticipante1Value;
  FormFieldController<String>? cargoParticipante1ValueController;
  // State field(s) for participante2 widget.
  FocusNode? participante2FocusNode;
  TextEditingController? participante2TextController;
  String? Function(BuildContext, String?)? participante2TextControllerValidator;
  // State field(s) for CargoParticipante2 widget.
  String? cargoParticipante2Value;
  FormFieldController<String>? cargoParticipante2ValueController;
  // State field(s) for viesPolitico widget.
  String? viesPoliticoValue;
  FormFieldController<String>? viesPoliticoValueController;
  // Stores action output result for [Backend Call - API (GPT mensagem simples)] action in Button widget.
  ApiCallResponse? retornoGPT;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    temaDiscursoFocusNode?.dispose();
    temaDiscursoTextController?.dispose();

    comunidadeFocusNode?.dispose();
    comunidadeTextController?.dispose();

    localFocusNode?.dispose();
    localTextController?.dispose();

    historicoCandidatoFocusNode?.dispose();
    historicoCandidatoTextController?.dispose();

    valoresCandidatoFocusNode?.dispose();
    valoresCandidatoTextController?.dispose();

    redutoEleitoralFocusNode?.dispose();
    redutoEleitoralTextController?.dispose();

    temaFocusNode?.dispose();
    temaTextController?.dispose();

    participante1FocusNode?.dispose();
    participante1TextController?.dispose();

    participante2FocusNode?.dispose();
    participante2TextController?.dispose();
  }
}
