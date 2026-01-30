import '/flutter_flow/flutter_flow_util.dart';
import 'cadastro_grp_whats_widget.dart' show CadastroGrpWhatsWidget;
import 'package:flutter/material.dart';

class CadastroGrpWhatsModel extends FlutterFlowModel<CadastroGrpWhatsWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for linkGrupo widget.
  FocusNode? linkGrupoFocusNode;
  TextEditingController? linkGrupoTextController;
  String? Function(BuildContext, String?)? linkGrupoTextControllerValidator;
  String? _linkGrupoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor informar a descrição da solicitação';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    linkGrupoTextControllerValidator = _linkGrupoTextControllerValidator;
  }

  @override
  void dispose() {
    linkGrupoFocusNode?.dispose();
    linkGrupoTextController?.dispose();
  }
}
