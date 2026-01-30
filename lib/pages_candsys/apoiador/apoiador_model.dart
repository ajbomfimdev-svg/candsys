import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'apoiador_widget.dart' show ApoiadorWidget;
import 'package:flutter/material.dart';

class ApoiadorModel extends FlutterFlowModel<ApoiadorWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in apoiador widget.
  List<AdversariosPoliticosRow>? retornoApoiadores;
  // Stores action output result for [Backend Call - Query Rows] action in apoiador widget.
  List<AcessoresRow>? retornoAcessores2;
  // Stores action output result for [Backend Call - Query Rows] action in apoiador widget.
  List<AcessoresRow>? retornoAcessores;
  Stream<List<ApoiadoresPoliticosRow>>? containerSupabaseStream;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  Stream<List<AcessoresRow>>? assessoresSupabaseStream;
  Stream<List<InstituicoesRow>>? instituicaoSupabaseStream;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ApoiadoresPoliticosRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    paginatedDataTableController.dispose();
  }
}
