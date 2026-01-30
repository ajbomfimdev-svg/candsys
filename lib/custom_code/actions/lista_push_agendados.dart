// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<UserRefsStruct>> listaPushAgendados() async {
  try {
    // Obtendo a data e hora atual
    DateTime now = DateTime.now();

    // Consultando o Firebase para notificações de push agendadas no futuro
    QuerySnapshot<Map<String, dynamic>> querySnapshot = await FirebaseFirestore
        .instance
        .collection('ff_user_push_notifications')
        .where('scheduled_time', isGreaterThan: now)
        .orderBy('scheduled_time', descending: false)
        .get();

    List<UserRefsStruct> resultList = [];

    // Iterando sobre os documentos retornados pela consulta
    for (QueryDocumentSnapshot<Map<String, dynamic>> doc
        in querySnapshot.docs) {
      // Obtendo a string de referências de usuário e dividindo-a em uma lista
      List<String> userRefsList = (doc['user_refs'] as String).split(',');

      // Obtendo a data agendada do documento
      DateTime scheduledTime = (doc['scheduled_time'] as Timestamp).toDate();

      // Iterando sobre as referências de usuário e adicionando cada uma à lista de resultados
      for (String userRef in userRefsList) {
        resultList.add(
          UserRefsStruct(
            documentId: doc.id,
            userRefs: userRef.trim(), // Removendo espaços em branco
            scheduledTime: scheduledTime,
          ),
        );
      }
    }

    return resultList;
  } catch (e) {
    // Lidando com quaisquer erros que possam ocorrer durante a consulta ou iteração sobre os documentos
    print('Erro ao listar notificações agendadas: $e');
    return []; // Retorna uma lista vazia em caso de erro
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
