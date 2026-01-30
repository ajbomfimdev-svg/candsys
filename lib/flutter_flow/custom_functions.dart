import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

String saldo(double valor) {
  // formate o valor para moeda do brasil exemplo 1.000,00
  final formatador = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  return formatador.format(valor);
}

bool isNull(List<String>? widgetState) {
  if (widgetState == null || widgetState.isEmpty) {
    return true;
  } else {
    return false;
  }
}

DateTime? data30dias() {
  // função que retorna a data de hoje mais 30 em formato datetime
  DateTime hoje = DateTime.now();
  DateTime data30 = hoje.add(Duration(days: 30));
  return data30;
}

String formatCityName(String cidadeUF) {
  // remove os acentos
  final Map<String, String> acentos = {
    'á': 'a',
    'à': 'a',
    'â': 'a',
    'ã': 'a',
    'é': 'e',
    'ê': 'e',
    'í': 'i',
    'ó': 'o',
    'ô': 'o',
    'õ': 'o',
    'ú': 'u',
    'ü': 'u',
    'ç': 'c',
  };

  String cidadeSemAcento = cidadeUF.toLowerCase();
  acentos.forEach((key, value) {
    cidadeSemAcento = cidadeSemAcento.replaceAll(key, value);
  });

  //troca espaços por -
  String formattedName = cidadeSemAcento.replaceAll(' ', '-');

  return formattedName;
}

double? somaValorTotal(List<double>? listaValorTotal) {
  // soma dos valores da lista parametro
  if (listaValorTotal == null || listaValorTotal.isEmpty) {
    return null;
  }
  double total = 0;
  for (double valor in listaValorTotal) {
    total += valor;
  }
  return total;
}

DateTime? data7dias() {
  // função que retorna a data de hoje mais 7 em formato datetime
  DateTime hoje = DateTime.now();
  DateTime data7 = hoje.add(Duration(days: 7));
  return data7;
}

DateTime? data15dias() {
  // função que retorna a data de hoje mais 15 em formato datetime
  DateTime hoje = DateTime.now();
  DateTime data15 = hoje.add(Duration(days: 15));
  return data15;
}

DateTime data90dias() {
  // somar 90 dias da data de hoje
  DateTime hoje = DateTime.now();
  DateTime data90 = hoje.add(Duration(days: 90));
  return data90;
}

DateTime data180dias() {
  // função que retorna a data de hoje mais 180 dias em formato datetime
  DateTime hoje = DateTime.now();
  DateTime data180 = hoje.add(Duration(days: 180));
  return data180;
}

DateTime dataAnual() {
  // função que retorna a data de hoje mais 365 dias em formato datetime
  DateTime hoje = DateTime.now();
  DateTime dataAnual = hoje.add(Duration(days: 365));
  return dataAnual;
}

DateTime? data3dias() {
  // função que retorna a data de hoje mais 3 em formato datetime
  DateTime hoje = DateTime.now();
  DateTime data3 = hoje.add(Duration(days: 3));
  return data3;
}

bool? valideSenha(String? senha) {
  // valide se a senha digitada contém uma letra maiuscula uma letra minuscula um caracter especial e um numero
  if (senha == null) {
    return false;
  }

  final hasUppercase = senha.contains(RegExp(r'[A-Z]'));
  final hasLowercase = senha.contains(RegExp(r'[a-z]'));
  final hasNumber = senha.contains(RegExp(r'[0-9]'));
  final hasSpecialCharacters =
      senha.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

  return hasUppercase && hasLowercase && hasNumber && hasSpecialCharacters;
}

DateTime dataMenos7dias() {
  // função que retorna a data de hoje menos 7 dias em formato datetime
  DateTime today = DateTime.now();
  DateTime sevenDaysAgo = today.subtract(Duration(days: 7));
  return sevenDaysAgo;
}

DateTime avisoCompromisso(DateTime data) {
  DateTime dateHour = data.subtract(Duration(hours: 1));
  return dateHour;
}

String? criptografiaPalavras(
  String? stringPalavra,
  String? idUser,
) {
  if (stringPalavra == null || idUser == null) return null;

  final key = utf8.encode(idUser);
  final bytes = utf8.encode(stringPalavra);

  // Simple XOR encryption
  final encryptedBytes = List<int>.filled(bytes.length, 0);
  for (int i = 0; i < bytes.length; i++) {
    encryptedBytes[i] = bytes[i] ^ key[i % key.length];
  }

  return base64.encode(encryptedBytes);
}

String? descriptografia(
  String? text,
  String? chave,
) {
  {
    if (text == null || chave == null) return null;

    try {
      final key = utf8.encode(chave);
      final encryptedBytes = base64.decode(text);

      // Simple XOR decryption
      final decryptedBytes = List<int>.filled(encryptedBytes.length, 0);
      for (int i = 0; i < encryptedBytes.length; i++) {
        decryptedBytes[i] = encryptedBytes[i] ^ key[i % key.length];
      }

      return utf8.decode(decryptedBytes);
    } catch (e) {
      return null;
    }
  }
}

String formatarTelefone(String telefone) {
  // gere uma function que recebe um telefone neste formato (11) 95407-3401 e formata removendo espaços e os caracteres especiais deixando somente numeros
  return telefone.replaceAll(RegExp(r'[^0-9]'), '');
}
