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

Future<String> getRevenueCatOfferings() async {
  try {
    Offerings offerings = await Purchases.getOfferings();

    if (offerings.current == null) {
      return "❌ PROBLEMA: Nenhum offering atual encontrado!\n\nVerifique no RevenueCat se tem um offering marcado como 'Current'";
    }

    String info = """
    ✅ Offerings carregados!
    
    Offering Atual: ${offerings.current!.identifier}
    
    Pacotes disponíveis:
    ${offerings.current!.availablePackages.map((p) => "- ${p.identifier}: ${p.storeProduct.title}").join('\n')}
    
    Total de pacotes: ${offerings.current!.availablePackages.length}
    """;

    return info;
  } catch (e) {
    return "❌ ERRO ao buscar offerings: $e";
  }
}
