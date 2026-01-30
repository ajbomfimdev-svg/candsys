import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'catalogo_cursos_widget.dart' show CatalogoCursosWidget;
import 'package:flutter/material.dart';

class CatalogoCursosModel extends FlutterFlowModel<CatalogoCursosWidget> {
  ///  State fields for stateful widgets in this page.

  Stream<List<CategoriasCursosRow>>? catalogoCursosSupabaseStream;
  Stream<List<CursosRow>>? containerSupabaseStream;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
