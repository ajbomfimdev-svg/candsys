import '/flutter_flow/flutter_flow_util.dart';
import 'cadastro_instagram_widget.dart' show CadastroInstagramWidget;
import 'package:flutter/material.dart';

class CadastroInstagramModel extends FlutterFlowModel<CadastroInstagramWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for linkInstagram widget.
  FocusNode? linkInstagramFocusNode;
  TextEditingController? linkInstagramTextController;
  String? Function(BuildContext, String?)? linkInstagramTextControllerValidator;
  String? _linkInstagramTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor informar a descrição da solicitação';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    linkInstagramTextControllerValidator =
        _linkInstagramTextControllerValidator;
  }

  @override
  void dispose() {
    linkInstagramFocusNode?.dispose();
    linkInstagramTextController?.dispose();
  }
}
