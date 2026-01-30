import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ver_editar_apoiador_widget.dart' show VerEditarApoiadorWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class VerEditarApoiadorModel extends FlutterFlowModel<VerEditarApoiadorWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NomeCompletoApoiador widget.
  FocusNode? nomeCompletoApoiadorFocusNode;
  TextEditingController? nomeCompletoApoiadorTextController;
  String? Function(BuildContext, String?)?
      nomeCompletoApoiadorTextControllerValidator;
  String? _nomeCompletoApoiadorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor preencher o nome completo';
    }

    return null;
  }

  // State field(s) for CPFApoiador widget.
  FocusNode? cPFApoiadorFocusNode;
  TextEditingController? cPFApoiadorTextController;
  late MaskTextInputFormatter cPFApoiadorMask;
  String? Function(BuildContext, String?)? cPFApoiadorTextControllerValidator;
  String? _cPFApoiadorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor preencher o CPF';
    }

    return null;
  }

  // State field(s) for TelefoneApoiador widget.
  FocusNode? telefoneApoiadorFocusNode;
  TextEditingController? telefoneApoiadorTextController;
  late MaskTextInputFormatter telefoneApoiadorMask;
  String? Function(BuildContext, String?)?
      telefoneApoiadorTextControllerValidator;
  String? _telefoneApoiadorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor preencher o telefone';
    }

    return null;
  }

  // State field(s) for EmailApoiador widget.
  FocusNode? emailApoiadorFocusNode;
  TextEditingController? emailApoiadorTextController;
  String? Function(BuildContext, String?)? emailApoiadorTextControllerValidator;
  String? _emailApoiadorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor preencher o email';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Favor preencher o email válido';
    }
    return null;
  }

  DateTime? datePicked;
  // State field(s) for profissaoApoiador widget.
  String? profissaoApoiadorValue;
  FormFieldController<String>? profissaoApoiadorValueController;
  // State field(s) for ReligiaoApoiador widget.
  String? religiaoApoiadorValue;
  FormFieldController<String>? religiaoApoiadorValueController;
  // State field(s) for TimeApoiador widget.
  String? timeApoiadorValue;
  FormFieldController<String>? timeApoiadorValueController;
  // State field(s) for PrecisandoApoiador widget.
  FocusNode? precisandoApoiadorFocusNode;
  TextEditingController? precisandoApoiadorTextController;
  String? Function(BuildContext, String?)?
      precisandoApoiadorTextControllerValidator;
  // State field(s) for SugestoesApoiador widget.
  FocusNode? sugestoesApoiadorFocusNode;
  TextEditingController? sugestoesApoiadorTextController;
  String? Function(BuildContext, String?)?
      sugestoesApoiadorTextControllerValidator;
  // State field(s) for CEPApoiador widget.
  FocusNode? cEPApoiadorFocusNode;
  TextEditingController? cEPApoiadorTextController;
  String? Function(BuildContext, String?)? cEPApoiadorTextControllerValidator;
  // Stores action output result for [Backend Call - API (Busca endereco pelo CEP)] action in Button widget.
  ApiCallResponse? apiResultCEP;
  // State field(s) for EndApoiador widget.
  FocusNode? endApoiadorFocusNode;
  TextEditingController? endApoiadorTextController;
  String? Function(BuildContext, String?)? endApoiadorTextControllerValidator;
  String? _endApoiadorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor preencher o endereço';
    }

    return null;
  }

  // State field(s) for NumEndApoiador widget.
  FocusNode? numEndApoiadorFocusNode;
  TextEditingController? numEndApoiadorTextController;
  String? Function(BuildContext, String?)?
      numEndApoiadorTextControllerValidator;
  String? _numEndApoiadorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Preencher o número';
    }

    return null;
  }

  // State field(s) for BairroApoiador widget.
  FocusNode? bairroApoiadorFocusNode;
  TextEditingController? bairroApoiadorTextController;
  String? Function(BuildContext, String?)?
      bairroApoiadorTextControllerValidator;
  String? _bairroApoiadorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor preencher o Bairro';
    }

    return null;
  }

  // State field(s) for cidadeApoiador widget.
  FocusNode? cidadeApoiadorFocusNode;
  TextEditingController? cidadeApoiadorTextController;
  String? Function(BuildContext, String?)?
      cidadeApoiadorTextControllerValidator;
  // State field(s) for ufApoiador widget.
  FocusNode? ufApoiadorFocusNode;
  TextEditingController? ufApoiadorTextController;
  String? Function(BuildContext, String?)? ufApoiadorTextControllerValidator;

  @override
  void initState(BuildContext context) {
    nomeCompletoApoiadorTextControllerValidator =
        _nomeCompletoApoiadorTextControllerValidator;
    cPFApoiadorTextControllerValidator = _cPFApoiadorTextControllerValidator;
    telefoneApoiadorTextControllerValidator =
        _telefoneApoiadorTextControllerValidator;
    emailApoiadorTextControllerValidator =
        _emailApoiadorTextControllerValidator;
    endApoiadorTextControllerValidator = _endApoiadorTextControllerValidator;
    numEndApoiadorTextControllerValidator =
        _numEndApoiadorTextControllerValidator;
    bairroApoiadorTextControllerValidator =
        _bairroApoiadorTextControllerValidator;
  }

  @override
  void dispose() {
    nomeCompletoApoiadorFocusNode?.dispose();
    nomeCompletoApoiadorTextController?.dispose();

    cPFApoiadorFocusNode?.dispose();
    cPFApoiadorTextController?.dispose();

    telefoneApoiadorFocusNode?.dispose();
    telefoneApoiadorTextController?.dispose();

    emailApoiadorFocusNode?.dispose();
    emailApoiadorTextController?.dispose();

    precisandoApoiadorFocusNode?.dispose();
    precisandoApoiadorTextController?.dispose();

    sugestoesApoiadorFocusNode?.dispose();
    sugestoesApoiadorTextController?.dispose();

    cEPApoiadorFocusNode?.dispose();
    cEPApoiadorTextController?.dispose();

    endApoiadorFocusNode?.dispose();
    endApoiadorTextController?.dispose();

    numEndApoiadorFocusNode?.dispose();
    numEndApoiadorTextController?.dispose();

    bairroApoiadorFocusNode?.dispose();
    bairroApoiadorTextController?.dispose();

    cidadeApoiadorFocusNode?.dispose();
    cidadeApoiadorTextController?.dispose();

    ufApoiadorFocusNode?.dispose();
    ufApoiadorTextController?.dispose();
  }
}
