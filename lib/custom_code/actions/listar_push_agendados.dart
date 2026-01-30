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

Future<List<UserRefsStruct>> listarPushAgendados() async {
  // DataType para armazenar os resultados
  final List<UserRefsStruct> resultList = [];
  // Obtém a data e hora atual
  final now = DateTime.now();

  try {
    // Consulta o Firebase para obter notificações de push agendadas no futuro
    final QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await FirebaseFirestore.instance
            .collection('ff_user_push_notifications')
            .where('scheduled_time', isGreaterThan: now)
            .orderBy('scheduled_time', descending: false)
            .get();

    // Itera sobre os documentos retornados pela consulta
    querySnapshot.docs.forEach((doc) {
      // Obtém a string de referências de usuário do documento
      final String userRefsString = doc['user_refs'];

      // Divide a string em uma lista de referências de usuário
      final List<String> userRefsList = userRefsString.split(',').toList();

      // Obtém o tempo agendado do documento
      final DateTime scheduledTime =
          (doc['scheduled_time'] as Timestamp).toDate();

      // Itera sobre as referências de usuário adiciona à lista de resultados
      userRefsList.forEach((userRefs) {
        resultList.add(UserRefsStruct(
          documentId: doc.id, // Adiciona o DocumentID ao objeto
          userRefs: userRefs,
          scheduledTime: scheduledTime,
        ));
      });
    });
  } catch (error) {
    // Trata o erro, se houver algum
    print("Erro ao buscar dados: $error");
  }

  // Retorna a lista de resultados
  return resultList;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
