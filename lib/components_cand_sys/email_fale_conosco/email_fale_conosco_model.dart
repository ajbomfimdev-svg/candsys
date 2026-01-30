import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'email_fale_conosco_widget.dart' show EmailFaleConoscoWidget;
import 'package:flutter/material.dart';

class EmailFaleConoscoModel extends FlutterFlowModel<EmailFaleConoscoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ddTipoSolicitacao widget.
  String? ddTipoSolicitacaoValue;
  FormFieldController<String>? ddTipoSolicitacaoValueController;
  // State field(s) for DescNot widget.
  FocusNode? descNotFocusNode;
  TextEditingController? descNotTextController;
  String? Function(BuildContext, String?)? descNotTextControllerValidator;
  String? _descNotTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor informar a descrição da solicitação';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? user;

  @override
  void initState(BuildContext context) {
    descNotTextControllerValidator = _descNotTextControllerValidator;
  }

  @override
  void dispose() {
    descNotFocusNode?.dispose();
    descNotTextController?.dispose();
  }
}
