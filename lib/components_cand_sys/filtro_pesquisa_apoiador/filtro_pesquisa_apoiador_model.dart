import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filtro_pesquisa_apoiador_widget.dart' show FiltroPesquisaApoiadorWidget;
import 'package:flutter/material.dart';

class FiltroPesquisaApoiadorModel
    extends FlutterFlowModel<FiltroPesquisaApoiadorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CheckboxCidade widget.
  bool? checkboxCidadeValue;
  // State field(s) for DDCidadeFiltro widget.
  String? dDCidadeFiltroValue;
  FormFieldController<String>? dDCidadeFiltroValueController;
  // State field(s) for CheckboxBairro widget.
  bool? checkboxBairroValue;
  // State field(s) for DDBairroFiltro widget.
  String? dDBairroFiltroValue;
  FormFieldController<String>? dDBairroFiltroValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
