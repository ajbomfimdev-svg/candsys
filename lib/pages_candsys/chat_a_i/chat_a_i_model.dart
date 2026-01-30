import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'chat_a_i_widget.dart' show ChatAIWidget;
import 'package:flutter/material.dart';

class ChatAIModel extends FlutterFlowModel<ChatAIWidget> {
  ///  Local state fields for this page.

  String? resposta;

  List<HistoricoConversaStruct> historicoConversa = [];
  void addToHistoricoConversa(HistoricoConversaStruct item) =>
      historicoConversa.add(item);
  void removeFromHistoricoConversa(HistoricoConversaStruct item) =>
      historicoConversa.remove(item);
  void removeAtIndexFromHistoricoConversa(int index) =>
      historicoConversa.removeAt(index);
  void insertAtIndexInHistoricoConversa(
          int index, HistoricoConversaStruct item) =>
      historicoConversa.insert(index, item);
  void updateHistoricoConversaAtIndex(
          int index, Function(HistoricoConversaStruct) updateFn) =>
      historicoConversa[index] = updateFn(historicoConversa[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Faça uma pergunta...';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? user;
  // Stores action output result for [Backend Call - API (Chat Completions Open AI)] action in Button widget.
  ApiCallResponse? apiResultOpenAI;
  // Stores action output result for [Backend Call - API (Chat Completions Open AI)] action in Button widget.
  ApiCallResponse? apiResultOpenAI2;

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    listViewController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
