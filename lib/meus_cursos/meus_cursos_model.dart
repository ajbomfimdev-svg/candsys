import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'meus_cursos_widget.dart' show MeusCursosWidget;
import 'package:flutter/material.dart';

class MeusCursosModel extends FlutterFlowModel<MeusCursosWidget> {
  ///  Local state fields for this page.

  List<int> cursosID = [];
  void addToCursosID(int item) => cursosID.add(item);
  void removeFromCursosID(int item) => cursosID.remove(item);
  void removeAtIndexFromCursosID(int index) => cursosID.removeAt(index);
  void insertAtIndexInCursosID(int index, int item) =>
      cursosID.insert(index, item);
  void updateCursosIDAtIndex(int index, Function(int) updateFn) =>
      cursosID[index] = updateFn(cursosID[index]);

  List<int> assinaturasID = [];
  void addToAssinaturasID(int item) => assinaturasID.add(item);
  void removeFromAssinaturasID(int item) => assinaturasID.remove(item);
  void removeAtIndexFromAssinaturasID(int index) =>
      assinaturasID.removeAt(index);
  void insertAtIndexInAssinaturasID(int index, int item) =>
      assinaturasID.insert(index, item);
  void updateAssinaturasIDAtIndex(int index, Function(int) updateFn) =>
      assinaturasID[index] = updateFn(assinaturasID[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in meusCursos widget.
  List<MeusCursosRow>? meusCursos;
  // Stores action output result for [Backend Call - Query Rows] action in meusCursos widget.
  List<MeusCursosRow>? minhasAssinaturas;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<MeusCursosRow>? curso;
  // Stores action output result for [Backend Call - API (Cancelar Assinatura)] action in Button widget.
  ApiCallResponse? apiResultAssinaturaCancelar;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
