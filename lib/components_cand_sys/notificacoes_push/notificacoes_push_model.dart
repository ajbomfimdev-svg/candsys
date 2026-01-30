import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'notificacoes_push_widget.dart' show NotificacoesPushWidget;
import 'package:flutter/material.dart';

class NotificacoesPushModel extends FlutterFlowModel<NotificacoesPushWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tituloNot widget.
  FocusNode? tituloNotFocusNode;
  TextEditingController? tituloNotTextController;
  String? Function(BuildContext, String?)? tituloNotTextControllerValidator;
  String? _tituloNotTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor informar o título da notificação';
    }

    return null;
  }

  // State field(s) for DescNot widget.
  FocusNode? descNotFocusNode;
  TextEditingController? descNotTextController;
  String? Function(BuildContext, String?)? descNotTextControllerValidator;
  String? _descNotTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor informar a descrição da notificação';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UsersRecord>? qtdAcessores;

  @override
  void initState(BuildContext context) {
    tituloNotTextControllerValidator = _tituloNotTextControllerValidator;
    descNotTextControllerValidator = _descNotTextControllerValidator;
  }

  @override
  void dispose() {
    tituloNotFocusNode?.dispose();
    tituloNotTextController?.dispose();

    descNotFocusNode?.dispose();
    descNotTextController?.dispose();
  }
}
