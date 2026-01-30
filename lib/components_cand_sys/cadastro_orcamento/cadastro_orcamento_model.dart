import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cadastro_orcamento_widget.dart' show CadastroOrcamentoWidget;
import 'package:flutter/material.dart';

class CadastroOrcamentoModel extends FlutterFlowModel<CadastroOrcamentoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NomeProdutoServico widget.
  String? nomeProdutoServicoValue;
  FormFieldController<String>? nomeProdutoServicoValueController;
  // State field(s) for QtdOrcamento widget.
  FocusNode? qtdOrcamentoFocusNode;
  TextEditingController? qtdOrcamentoTextController;
  String? Function(BuildContext, String?)? qtdOrcamentoTextControllerValidator;
  String? _qtdOrcamentoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor informar a quantidade';
    }

    return null;
  }

  // State field(s) for TipoOrcamento widget.
  FocusNode? tipoOrcamentoFocusNode;
  TextEditingController? tipoOrcamentoTextController;
  String? Function(BuildContext, String?)? tipoOrcamentoTextControllerValidator;
  DateTime? datePicked;
  bool isDataUploading_uploadDataZoz = false;
  FFUploadedFile uploadedLocalFile_uploadDataZoz =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataZoz = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrcamentoRow? orcamentoAdd;

  @override
  void initState(BuildContext context) {
    qtdOrcamentoTextControllerValidator = _qtdOrcamentoTextControllerValidator;
  }

  @override
  void dispose() {
    qtdOrcamentoFocusNode?.dispose();
    qtdOrcamentoTextController?.dispose();

    tipoOrcamentoFocusNode?.dispose();
    tipoOrcamentoTextController?.dispose();
  }
}
