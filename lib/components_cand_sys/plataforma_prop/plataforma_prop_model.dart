import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'plataforma_prop_widget.dart' show PlataformaPropWidget;
import 'package:flutter/material.dart';

class PlataformaPropModel extends FlutterFlowModel<PlataformaPropWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DDFormacaoEscolar widget.
  String? dDFormacaoEscolarValue;
  FormFieldController<String>? dDFormacaoEscolarValueController;
  // State field(s) for descProposta widget.
  FocusNode? descPropostaFocusNode;
  TextEditingController? descPropostaTextController;
  String? Function(BuildContext, String?)? descPropostaTextControllerValidator;
  String? _descPropostaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obirgatório';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    descPropostaTextControllerValidator = _descPropostaTextControllerValidator;
  }

  @override
  void dispose() {
    descPropostaFocusNode?.dispose();
    descPropostaTextController?.dispose();
  }
}
