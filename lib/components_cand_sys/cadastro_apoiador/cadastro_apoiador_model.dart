import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cadastro_apoiador_widget.dart' show CadastroApoiadorWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastroApoiadorModel extends FlutterFlowModel<CadastroApoiadorWidget> {
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
      return 'Favor preencher um email válido.';
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
  // State field(s) for CepApoiador widget.
  FocusNode? cepApoiadorFocusNode;
  TextEditingController? cepApoiadorTextController;
  late MaskTextInputFormatter cepApoiadorMask;
  String? Function(BuildContext, String?)? cepApoiadorTextControllerValidator;
  String? _cepApoiadorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor preencher o endereço';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Busca endereco pelo CEP)] action in Button widget.
  ApiCallResponse? apiResultCep;
  // State field(s) for EndApoiador widget.
  FocusNode? endApoiadorFocusNode;
  TextEditingController? endApoiadorTextController;
  String? Function(BuildContext, String?)? endApoiadorTextControllerValidator;
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
  // State field(s) for CidadeApoiador widget.
  FocusNode? cidadeApoiadorFocusNode;
  TextEditingController? cidadeApoiadorTextController;
  String? Function(BuildContext, String?)?
      cidadeApoiadorTextControllerValidator;
  // State field(s) for UFApoiador widget.
  FocusNode? uFApoiadorFocusNode;
  TextEditingController? uFApoiadorTextController;
  String? Function(BuildContext, String?)? uFApoiadorTextControllerValidator;

  @override
  void initState(BuildContext context) {
    nomeCompletoApoiadorTextControllerValidator =
        _nomeCompletoApoiadorTextControllerValidator;
    cPFApoiadorTextControllerValidator = _cPFApoiadorTextControllerValidator;
    telefoneApoiadorTextControllerValidator =
        _telefoneApoiadorTextControllerValidator;
    emailApoiadorTextControllerValidator =
        _emailApoiadorTextControllerValidator;
    cepApoiadorTextControllerValidator = _cepApoiadorTextControllerValidator;
    numEndApoiadorTextControllerValidator =
        _numEndApoiadorTextControllerValidator;
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

    cepApoiadorFocusNode?.dispose();
    cepApoiadorTextController?.dispose();

    endApoiadorFocusNode?.dispose();
    endApoiadorTextController?.dispose();

    numEndApoiadorFocusNode?.dispose();
    numEndApoiadorTextController?.dispose();

    bairroApoiadorFocusNode?.dispose();
    bairroApoiadorTextController?.dispose();

    cidadeApoiadorFocusNode?.dispose();
    cidadeApoiadorTextController?.dispose();

    uFApoiadorFocusNode?.dispose();
    uFApoiadorTextController?.dispose();
  }
}
