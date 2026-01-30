import 'dart:convert';

import 'package:flutter/material.dart';

import '/backend/backend.dart';

import '/backend/supabase/supabase.dart';

import '../../flutter_flow/place.dart';
import '../../flutter_flow/uploaded_file.dart';

/// SERIALIZATION HELPERS

String dateTimeRangeToString(DateTimeRange dateTimeRange) {
  final startStr = dateTimeRange.start.millisecondsSinceEpoch.toString();
  final endStr = dateTimeRange.end.millisecondsSinceEpoch.toString();
  return '$startStr|$endStr';
}

String placeToString(FFPlace place) => jsonEncode({
      'latLng': place.latLng.serialize(),
      'name': place.name,
      'address': place.address,
      'city': place.city,
      'state': place.state,
      'country': place.country,
      'zipCode': place.zipCode,
    });

String uploadedFileToString(FFUploadedFile uploadedFile) =>
    uploadedFile.serialize();

/// Converts the input value into a value that can be JSON encoded.
dynamic serializeParameter(dynamic value) {
  switch (value.runtimeType) {
    case DateTime:
      return (value as DateTime).millisecondsSinceEpoch;
    case DateTimeRange:
      return dateTimeRangeToString(value as DateTimeRange);
    case LatLng:
      return (value as LatLng).serialize();
    case Color:
      return (value as Color).toCssString();
    case FFPlace:
      return placeToString(value as FFPlace);
    case FFUploadedFile:
      return uploadedFileToString(value as FFUploadedFile);
    case SupabaseDataRow:
      return json.encode((value as SupabaseDataRow).data);
  }

  if (value is DocumentReference) {
    return value.path;
  }

  if (value is FirestoreRecord) {
    return (value as dynamic).reference.path;
  }

  return value;
}

String serializeParameterData(Map<String, dynamic> parameterData) => jsonEncode(
      parameterData.map(
        (key, value) => MapEntry(
          key,
          serializeParameter(value),
        ),
      )..removeWhere((k, v) => v == null),
    );

/// END SERIALIZATION HELPERS

/// DESERIALIZATION HELPERS

DateTimeRange? dateTimeRangeFromString(String dateTimeRangeStr) {
  final pieces = dateTimeRangeStr.split('|');
  if (pieces.length != 2) {
    return null;
  }
  return DateTimeRange(
    start: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.first)),
    end: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.last)),
  );
}

LatLng? latLngFromString(String? latLngStr) {
  final pieces = latLngStr?.split(',');
  if (pieces == null || pieces.length != 2) {
    return null;
  }
  return LatLng(
    double.parse(pieces.first.trim()),
    double.parse(pieces.last.trim()),
  );
}

FFPlace placeFromString(String placeStr) {
  final serializedData = jsonDecode(placeStr) as Map<String, dynamic>;
  final data = {
    'latLng': serializedData.containsKey('latLng')
        ? latLngFromString(serializedData['latLng'] as String)
        : const LatLng(0.0, 0.0),
    'name': serializedData['name'] ?? '',
    'address': serializedData['address'] ?? '',
    'city': serializedData['city'] ?? '',
    'state': serializedData['state'] ?? '',
    'country': serializedData['country'] ?? '',
    'zipCode': serializedData['zipCode'] ?? '',
  };
  return FFPlace(
    latLng: data['latLng'] as LatLng,
    name: data['name'] as String,
    address: data['address'] as String,
    city: data['city'] as String,
    state: data['state'] as String,
    country: data['country'] as String,
    zipCode: data['zipCode'] as String,
  );
}

FFUploadedFile uploadedFileFromString(String uploadedFileStr) =>
    FFUploadedFile.deserialize(uploadedFileStr);

T? getParameter<T>(Map<String, dynamic> data, String paramName) {
  try {
    if (!data.containsKey(paramName)) {
      return null;
    }
    final param = data[paramName];
    switch (T) {
      case String:
        return param;
      case double:
        return param.toDouble();
      case DateTime:
        return DateTime.fromMillisecondsSinceEpoch(param) as T;
      case DateTimeRange:
        return dateTimeRangeFromString(param) as T;
      case LatLng:
        return latLngFromString(param) as T;
      case Color:
        return fromCssColor(param) as T;
      case FFPlace:
        return placeFromString(param) as T;
      case FFUploadedFile:
        return uploadedFileFromString(param) as T;
      case SurveyQuestionsRow:
        return SurveyQuestionsRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case AvaliacoesCursosRow:
        return AvaliacoesCursosRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case AulasRow:
        return AulasRow(json.decode(param) as Map<String, dynamic>) as T;
      case CadastroSocialRow:
        return CadastroSocialRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case AcessoresRow:
        return AcessoresRow(json.decode(param) as Map<String, dynamic>) as T;
      case ApoiadoresPoliticosRow:
        return ApoiadoresPoliticosRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case NotificacoesPushRow:
        return NotificacoesPushRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case OrcamentoRow:
        return OrcamentoRow(json.decode(param) as Map<String, dynamic>) as T;
      case SurveyResponsesRow:
        return SurveyResponsesRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case BidRow:
        return BidRow(json.decode(param) as Map<String, dynamic>) as T;
      case PropostasRow:
        return PropostasRow(json.decode(param) as Map<String, dynamic>) as T;
      case ModulosRow:
        return ModulosRow(json.decode(param) as Map<String, dynamic>) as T;
      case AdversariosPoliticosRow:
        return AdversariosPoliticosRow(
            json.decode(param) as Map<String, dynamic>) as T;
      case DbAtivoRow:
        return DbAtivoRow(json.decode(param) as Map<String, dynamic>) as T;
      case CategoriasCursosRow:
        return CategoriasCursosRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case SloganCampanhaRow:
        return SloganCampanhaRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case CursosRow:
        return CursosRow(json.decode(param) as Map<String, dynamic>) as T;
      case MeusCursosRow:
        return MeusCursosRow(json.decode(param) as Map<String, dynamic>) as T;
      case MateriaisApoioRow:
        return MateriaisApoioRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case SurveysRow:
        return SurveysRow(json.decode(param) as Map<String, dynamic>) as T;
      case RepresentantesRow:
        return RepresentantesRow(json.decode(param) as Map<String, dynamic>)
            as T;
      case AssinaturasRow:
        return AssinaturasRow(json.decode(param) as Map<String, dynamic>) as T;
      case AgendaRow:
        return AgendaRow(json.decode(param) as Map<String, dynamic>) as T;
      case PrecosRow:
        return PrecosRow(json.decode(param) as Map<String, dynamic>) as T;
      case InstituicoesRow:
        return InstituicoesRow(json.decode(param) as Map<String, dynamic>) as T;
      case UsersRow:
        return UsersRow(json.decode(param) as Map<String, dynamic>) as T;
      case ProfissoesRow:
        return ProfissoesRow(json.decode(param) as Map<String, dynamic>) as T;
      case CobrancasRow:
        return CobrancasRow(json.decode(param) as Map<String, dynamic>) as T;
      case NotificationsRow:
        return NotificationsRow(json.decode(param) as Map<String, dynamic>)
            as T;
    }
    if (param is String) {
      return FirebaseFirestore.instance.doc(param) as T;
    }
    return param;
  } catch (e) {
    print('Error parsing parameter "$paramName": $e');
    return null;
  }
}

Future<T?> getDocumentParameter<T>(
  Map<String, dynamic> data,
  String paramName,
  RecordBuilder<T> recordBuilder,
) {
  if (!data.containsKey(paramName)) {
    return Future.value(null);
  }
  return FirebaseFirestore.instance
      .doc(data[paramName])
      .get()
      .then((s) => recordBuilder(s));
}

/// END DESERIALIZATION HELPERS
