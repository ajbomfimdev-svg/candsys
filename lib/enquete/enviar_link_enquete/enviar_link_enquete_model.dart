import '/flutter_flow/flutter_flow_util.dart';
import 'enviar_link_enquete_widget.dart' show EnviarLinkEnqueteWidget;
import 'package:flutter/material.dart';

class EnviarLinkEnqueteModel extends FlutterFlowModel<EnviarLinkEnqueteWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for telApoiador widget.
  FocusNode? telApoiadorFocusNode;
  TextEditingController? telApoiadorTextController;
  String? Function(BuildContext, String?)? telApoiadorTextControllerValidator;
  String? _telApoiadorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o telefone com ddd';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    telApoiadorTextControllerValidator = _telApoiadorTextControllerValidator;
  }

  @override
  void dispose() {
    telApoiadorFocusNode?.dispose();
    telApoiadorTextController?.dispose();
  }
}
