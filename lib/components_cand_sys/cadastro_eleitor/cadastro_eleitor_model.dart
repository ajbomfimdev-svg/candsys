import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cadastro_eleitor_widget.dart' show CadastroEleitorWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastroEleitorModel extends FlutterFlowModel<CadastroEleitorWidget> {
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

  // State field(s) for profissaoApoiador widget.
  String? profissaoApoiadorValue;
  FormFieldController<String>? profissaoApoiadorValueController;
  DateTime? datePicked;
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
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? userLogado;

  @override
  void initState(BuildContext context) {
    nomeCompletoApoiadorTextControllerValidator =
        _nomeCompletoApoiadorTextControllerValidator;
    telefoneApoiadorTextControllerValidator =
        _telefoneApoiadorTextControllerValidator;
    emailApoiadorTextControllerValidator =
        _emailApoiadorTextControllerValidator;
  }

  @override
  void dispose() {
    nomeCompletoApoiadorFocusNode?.dispose();
    nomeCompletoApoiadorTextController?.dispose();

    telefoneApoiadorFocusNode?.dispose();
    telefoneApoiadorTextController?.dispose();

    emailApoiadorFocusNode?.dispose();
    emailApoiadorTextController?.dispose();

    bairroApoiadorFocusNode?.dispose();
    bairroApoiadorTextController?.dispose();

    cidadeApoiadorFocusNode?.dispose();
    cidadeApoiadorTextController?.dispose();
  }
}
