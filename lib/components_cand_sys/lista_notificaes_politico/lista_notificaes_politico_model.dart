import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'lista_notificaes_politico_widget.dart'
    show ListaNotificaesPoliticoWidget;
import 'package:flutter/material.dart';

class ListaNotificaesPoliticoModel
    extends FlutterFlowModel<ListaNotificaesPoliticoWidget> {
  ///  State fields for stateful widgets in this component.

  Stream<List<UsersRow>>? containerSupabaseStream;
  Completer<List<NotificacoesPushRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
