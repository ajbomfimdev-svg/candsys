import '/flutter_flow/flutter_flow_util.dart';
import 'novo_agendamento_widget.dart' show NovoAgendamentoWidget;
import 'package:flutter/material.dart';

class NovoAgendamentoModel extends FlutterFlowModel<NovoAgendamentoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nomeCompromisso widget.
  FocusNode? nomeCompromissoFocusNode;
  TextEditingController? nomeCompromissoTextController;
  String? Function(BuildContext, String?)?
      nomeCompromissoTextControllerValidator;
  String? _nomeCompromissoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Favor preencher o nome do compromisso';
    }

    return null;
  }

  // State field(s) for telefoneCompromisso widget.
  FocusNode? telefoneCompromissoFocusNode;
  TextEditingController? telefoneCompromissoTextController;
  String? Function(BuildContext, String?)?
      telefoneCompromissoTextControllerValidator;
  // State field(s) for enderecoCompromisso widget.
  FocusNode? enderecoCompromissoFocusNode;
  TextEditingController? enderecoCompromissoTextController;
  String? Function(BuildContext, String?)?
      enderecoCompromissoTextControllerValidator;
  // State field(s) for detalhesCompromisso widget.
  FocusNode? detalhesCompromissoFocusNode;
  TextEditingController? detalhesCompromissoTextController;
  String? Function(BuildContext, String?)?
      detalhesCompromissoTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    nomeCompromissoTextControllerValidator =
        _nomeCompromissoTextControllerValidator;
  }

  @override
  void dispose() {
    nomeCompromissoFocusNode?.dispose();
    nomeCompromissoTextController?.dispose();

    telefoneCompromissoFocusNode?.dispose();
    telefoneCompromissoTextController?.dispose();

    enderecoCompromissoFocusNode?.dispose();
    enderecoCompromissoTextController?.dispose();

    detalhesCompromissoFocusNode?.dispose();
    detalhesCompromissoTextController?.dispose();
  }
}
