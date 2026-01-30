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

import 'dart:convert';

Future<String> excelMobile(String nameExcel, dynamic json) async {
  try {
    // Convert json to List
    List<dynamic> data = json is String ? jsonDecode(json) : json;

    if (data.isEmpty) {
      return 'Nenhum dado encontrado';
    }

    // Get headers
    List<String> headers = data[0].keys.toList();

    // Criar CSV simples como string
    StringBuffer csvBuffer = StringBuffer();

    // Add headers
    csvBuffer.writeln(headers.join(','));

    // Add data rows
    for (var row in data) {
      List<String> rowValues = [];
      for (var header in headers) {
        var value = row[header];
        rowValues.add(value?.toString() ?? '');
      }
      csvBuffer.writeln(rowValues.join(','));
    }

    String csvContent = csvBuffer.toString();

    return 'CSV gerado com sucesso!\n${csvContent.length} caracteres\nPrimeiras linhas:\n${csvContent.split('\n').take(5).join('\n')}';
  } catch (e) {
    return 'Erro: ${e.toString()}';
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
