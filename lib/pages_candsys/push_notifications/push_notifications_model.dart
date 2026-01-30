import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'push_notifications_widget.dart' show PushNotificationsWidget;
import 'package:flutter/material.dart';

class PushNotificationsModel extends FlutterFlowModel<PushNotificationsWidget> {
  ///  Local state fields for this page.

  bool carregou = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - listarPushAgendados] action in pushNotifications widget.
  List<UserRefsStruct>? listarPush;
  // Stores action output result for [Custom Action - listaPushAgendados] action in pushNotifications widget.
  List<UserRefsStruct>? listarPush2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
