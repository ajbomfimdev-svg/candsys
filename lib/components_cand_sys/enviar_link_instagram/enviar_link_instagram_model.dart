import '/flutter_flow/flutter_flow_util.dart';
import 'enviar_link_instagram_widget.dart' show EnviarLinkInstagramWidget;
import 'package:flutter/material.dart';

class EnviarLinkInstagramModel
    extends FlutterFlowModel<EnviarLinkInstagramWidget> {
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
