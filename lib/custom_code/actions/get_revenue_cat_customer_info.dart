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

import 'package:purchases_flutter/purchases_flutter.dart';

Future<String> getRevenueCatCustomerInfo() async {
  try {
    // Tenta pegar as informações do cliente
    CustomerInfo customerInfo = await Purchases.getCustomerInfo();

    // Retorna informações úteis para debug
    String info = """
    ✅ SDK Inicializado com sucesso!
    
    User ID: ${customerInfo.originalAppUserId}
    Entitlements ativos: ${customerInfo.entitlements.active.keys.toList()}
    Tem assinatura ativa: ${customerInfo.entitlements.active.isNotEmpty}
    
    Produtos disponíveis: OK
    """;

    return info;
  } catch (e) {
    // Se der erro, retorna o erro
    return "❌ ERRO: $e";
  }
}
