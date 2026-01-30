import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'detalhes_curso_compra_unitaria_widget.dart'
    show DetalhesCursoCompraUnitariaWidget;
import 'package:flutter/material.dart';

class DetalhesCursoCompraUnitariaModel
    extends FlutterFlowModel<DetalhesCursoCompraUnitariaWidget> {
  ///  Local state fields for this page.

  List<int> idMeusCursos = [];
  void addToIdMeusCursos(int item) => idMeusCursos.add(item);
  void removeFromIdMeusCursos(int item) => idMeusCursos.remove(item);
  void removeAtIndexFromIdMeusCursos(int index) => idMeusCursos.removeAt(index);
  void insertAtIndexInIdMeusCursos(int index, int item) =>
      idMeusCursos.insert(index, item);
  void updateIdMeusCursosAtIndex(int index, Function(int) updateFn) =>
      idMeusCursos[index] = updateFn(idMeusCursos[index]);

  double? planoSelecionado;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in detalhesCursoCompraUnitaria widget.
  List<MeusCursosRow>? meusCursos;
  Stream<List<AulasRow>>? containerSupabaseStream;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
