import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

const String brevoApiKey =
  String.fromEnvironment('BREVO_API_KEY', defaultValue: '');
const String openAiApiKey =
  String.fromEnvironment('OPENAI_API_KEY', defaultValue: '');
const String stripeSecretKey =
  String.fromEnvironment('STRIPE_SECRET_KEY', defaultValue: '');

/// Start brevoEmail Group Code

class BrevoEmailGroup {
  static String getBaseUrl() => 'https://api.brevo.com/v3/smtp';
  static Map<String, String> headers = {
    'accept': 'application/json',
    'api-key': brevoApiKey,
    'content-type': 'application/json',
  };
  static FaleconoscoCall faleconoscoCall = FaleconoscoCall();
  static AtivacaolojaCall ativacaolojaCall = AtivacaolojaCall();
  static ConfirmacaoPedidoCall confirmacaoPedidoCall = ConfirmacaoPedidoCall();
  static CancelamentoAssinaturaStripeCall cancelamentoAssinaturaStripeCall =
      CancelamentoAssinaturaStripeCall();
}

class FaleconoscoCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? telefone = '',
    String? tiposolicitacao = '',
    String? solicitacao = '',
  }) async {
    final baseUrl = BrevoEmailGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "to": [
    {
      "email": "comunicacao@candsys.com.br",
      "subject": "CandSys Fale conosco: ${tiposolicitacao}"
    }
  ],
  "templateId": 2,
  "params": {
    "name": "${name}",
    "email": "${email}",
    "telefone": "${telefone}",
    "tiposolicitacao": "${tiposolicitacao}",
    "solicitacao": "${solicitacao}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'faleconosco',
      apiUrl: '${baseUrl}/email',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'api-key': brevoApiKey,
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AtivacaolojaCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? telefone = '',
    String? nomeLoja = '',
    String? logoLoja = '',
  }) async {
    final baseUrl = BrevoEmailGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "to": [
    {
      "email": "comunicacao@candsys.com.br",
      "subject": "Ativação de loja: ${nomeLoja}"
    }
  ],
  "templateId": 2,
  "params": {
    "name": "${name}",
    "email": "${email}",
    "telefone": "${telefone}",
    "nomeLoja": "${nomeLoja}",
    "logoLoja": "${logoLoja}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ativacaoloja',
      apiUrl: '${baseUrl}/email',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'api-key': brevoApiKey,
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConfirmacaoPedidoCall {
  Future<ApiCallResponse> call({
    String? nomeLojista = '',
    String? codPedido = '',
    String? loja = '',
    String? data = '',
    String? logoLoja = '',
    String? emailLojista = '',
    String? emailLoja = '',
  }) async {
    final baseUrl = BrevoEmailGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "to": [
    {
      "email": "${emailLojista}",
      "subject": "CandSys - Venda realizada"
    }
  ],
  "cc": [
    {
      "email": "${emailLoja}"
    }
  ],
  "templateId": 4,
  "params": {
    "nomeLojista": "${nomeLojista}",
    "codPedido": "${codPedido}",
    "loja": "${loja}",
    "logoLoja": "${logoLoja}",
    "data": "${data}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'confirmacao pedido',
      apiUrl: '${baseUrl}/email',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'api-key': brevoApiKey,
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelamentoAssinaturaStripeCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? email = '',
    String? assinatura = '',
  }) async {
    final baseUrl = BrevoEmailGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "to": [
    {
      "email": "alexdejesusbomfim@gmail.com",
      "subject": "Cancelamento de assinatura"
    }
  ],
  "templateId": 5,
  "params": {
    "nome": "${nome}",
    "email": "${email}",
    "assinatura": "${assinatura}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cancelamento assinatura stripe',
      apiUrl: '${baseUrl}/email',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'api-key': brevoApiKey,
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End brevoEmail Group Code

/// Start Supabase Group Code

class SupabaseGroup {
  static String getBaseUrl() =>
      'https://rqhqqnxgwgjlyioizhfd.supabase.co/rest/v1/rpc';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJxaHFxbnhnd2dqbHlpb2l6aGZkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDgzNDgzNTIsImV4cCI6MjA2MzkyNDM1Mn0.Z5kUHc2sC64xUNWPJ8yONR9NMc_sU-bhc23m30EocD0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJxaHFxbnhnd2dqbHlpb2l6aGZkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDgzNDgzNTIsImV4cCI6MjA2MzkyNDM1Mn0.Z5kUHc2sC64xUNWPJ8yONR9NMc_sU-bhc23m30EocD0',
  };
  static ExclusaoDeContaCall exclusaoDeContaCall = ExclusaoDeContaCall();
  static RelatorioPesquisaCall relatorioPesquisaCall = RelatorioPesquisaCall();
  static RelatorioPesquisaMultiCall relatorioPesquisaMultiCall =
      RelatorioPesquisaMultiCall();
}

class ExclusaoDeContaCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user_id": "${escapeStringForJson(userId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Exclusao de conta',
      apiUrl: '${baseUrl}/delete_user',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJxaHFxbnhnd2dqbHlpb2l6aGZkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDgzNDgzNTIsImV4cCI6MjA2MzkyNDM1Mn0.Z5kUHc2sC64xUNWPJ8yONR9NMc_sU-bhc23m30EocD0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJxaHFxbnhnd2dqbHlpb2l6aGZkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDgzNDgzNTIsImV4cCI6MjA2MzkyNDM1Mn0.Z5kUHc2sC64xUNWPJ8yONR9NMc_sU-bhc23m30EocD0',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RelatorioPesquisaCall {
  Future<ApiCallResponse> call({
    String? pSurveyId = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_survey_id": "${escapeStringForJson(pSurveyId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Relatorio pesquisa',
      apiUrl: '${baseUrl}/generate_survey_report',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJxaHFxbnhnd2dqbHlpb2l6aGZkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDgzNDgzNTIsImV4cCI6MjA2MzkyNDM1Mn0.Z5kUHc2sC64xUNWPJ8yONR9NMc_sU-bhc23m30EocD0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJxaHFxbnhnd2dqbHlpb2l6aGZkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDgzNDgzNTIsImV4cCI6MjA2MzkyNDM1Mn0.Z5kUHc2sC64xUNWPJ8yONR9NMc_sU-bhc23m30EocD0',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RelatorioPesquisaMultiCall {
  Future<ApiCallResponse> call({
    String? pSurveyId = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_survey_id": "${escapeStringForJson(pSurveyId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Relatorio pesquisa multi',
      apiUrl: '${baseUrl}/survey_report_by_option_extended',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJxaHFxbnhnd2dqbHlpb2l6aGZkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDgzNDgzNTIsImV4cCI6MjA2MzkyNDM1Mn0.Z5kUHc2sC64xUNWPJ8yONR9NMc_sU-bhc23m30EocD0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJxaHFxbnhnd2dqbHlpb2l6aGZkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDgzNDgzNTIsImV4cCI6MjA2MzkyNDM1Mn0.Z5kUHc2sC64xUNWPJ8yONR9NMc_sU-bhc23m30EocD0',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Supabase Group Code

class BuscarMunicipiosCall {
  static Future<ApiCallResponse> call({
    String? uf = 'SP',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarMunicipios',
      apiUrl:
          'https://servicodados.ibge.gov.br/api/v1/localidades/estados/${uf}/municipios',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? cidade(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PopulacaoCidadesCall {
  static Future<ApiCallResponse> call({
    String? idCidade = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Populacao Cidades',
      apiUrl:
          'https://servicodados.ibge.gov.br/api/v3/agregados/793/periodos/-6/variaveis/93?localidades=N6${idCidade}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? cidadeNome(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].resultados[:].series[:].localidade.nome''',
      ));
  static dynamic qtdPopulacao(dynamic response) => getJsonField(
        response,
        r'''$[:].resultados[:].series[:].serie''',
      );
}

class BuscarDeputadosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarDeputados',
      apiUrl:
          'https://dadosabertos.camara.leg.br/api/v2/deputados?ordem=ASC&ordenarPor=nome',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nomeDep(dynamic response) => (getJsonField(
        response,
        r'''$.dados[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? partidoDep(dynamic response) => (getJsonField(
        response,
        r'''$.dados[:].siglaPartido''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? idDep(dynamic response) => (getJsonField(
        response,
        r'''$.dados[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? fotoDep(dynamic response) => (getJsonField(
        response,
        r'''$.dados[:].urlFoto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? emailDep(dynamic response) => (getJsonField(
        response,
        r'''$.dados[:].email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? dadosDep(dynamic response) => getJsonField(
        response,
        r'''$.dados''',
        true,
      ) as List?;
}

class DetalhesDeputadoCall {
  static Future<ApiCallResponse> call({
    int? idDeputado,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DetalhesDeputado',
      apiUrl:
          'https://dadosabertos.camara.leg.br/api/v2/deputados/${idDeputado}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic dados(dynamic response) => getJsonField(
        response,
        r'''$.dados''',
      );
  static String? siglaPartido(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dados.ultimoStatus.siglaPartido''',
      ));
  static String? siglaUf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dados.ultimoStatus.siglaUf''',
      ));
  static String? urlFoto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dados.ultimoStatus.urlFoto''',
      ));
  static String? nomeCivil(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dados.nomeCivil''',
      ));
  static String? municipioNascimento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dados.municipioNascimento''',
      ));
  static String? escolaridade(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dados.escolaridade''',
      ));
  static dynamic dadosGabinete(dynamic response) => getJsonField(
        response,
        r'''$.dados.ultimoStatus.gabinete''',
      );
  static String? gabineteNome(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dados.ultimoStatus.gabinete.nome''',
      ));
  static String? gabinetePredio(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dados.ultimoStatus.gabinete.predio''',
      ));
  static String? gabineteSala(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dados.ultimoStatus.gabinete.sala''',
      ));
  static String? gabineteAndar(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dados.ultimoStatus.gabinete.andar''',
      ));
  static String? gabineteTelefone(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dados.ultimoStatus.gabinete.telefone''',
      ));
  static String? gabineteEmail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dados.ultimoStatus.gabinete.email''',
      ));
  static List<String>? dadosRedeSocial(dynamic response) => (getJsonField(
        response,
        r'''$.dados.redeSocial''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? dadosNascimento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dados.dataNascimento''',
      ));
}

class ChatCompletionsOpenAICall {
  static Future<ApiCallResponse> call({
    String? apiKey = openAiApiKey,
    String? pergunta = '',
    dynamic historicoConversaJson,
  }) async {
    final historicoConversa = _serializeJson(historicoConversaJson, true);
    final ffApiRequestBody = '''
{
  "model": "gpt-5-mini",
  "messages": ${historicoConversa}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Chat Completions Open AI',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? resposta(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
  static String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? modelo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.model''',
      ));
}

class AsaasCustomerCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? cpf = '',
    String? adressNumber = '',
    String? email = '',
    String? cep = '',
    String? externalReference = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${name}",
  "cpfCnpj": "${cpf}",
  "email": "${email}",
  "postalCode": "${cep}",
  "addressNumber": "${adressNumber}",
  "externalReference": "${externalReference}",
  "notificationDisabled": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Asaas Customer',
      apiUrl: 'https://api.asaas.com/v3/customers',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'access_token':
            '\$aact_prod_000MzkwODA2MWY2OGM3MWRlMDU2NWM3MzJlNzZmNGZhZGY6OjJkNTAzYTVlLTc0YWQtNGNmOS1hY2U4LTliYzRlYWU4YzdjMzo6JGFhY2hfZjhkOWRlODUtNjdmOC00ZjcxLWFmZGUtOWQzNDQyNGMyMzg5',
        'content-type': 'application/json',
        'User-Agent': 'User-Agent',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? customerIdAsaas(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? descErro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errors[:].description''',
      ));
}

class AsaasCobrancaCall {
  static Future<ApiCallResponse> call({
    String? holderName = '',
    String? number = '',
    String? expiryMonth = '',
    String? expiryYear = '',
    String? ccv = '',
    String? name = '',
    String? email = '',
    String? cpfCnpj = '',
    String? postalCode = '',
    String? addressNumber = '',
    String? phone = '',
    String? customer = '',
    double? value,
    String? dueDate = '',
    String? description = '',
    int? installmentCountQtdParcelas,
    double? installmentValueParcela,
    String? remoteIp = '',
  }) async {
    final ffApiRequestBody = '''
{
  "billingType": "CREDIT_CARD",
  "creditCard": {
    "holderName": "${holderName}",
    "number": "${number}",
    "expiryMonth": "${expiryMonth}",
    "expiryYear": "${expiryYear}",
    "ccv": "${ccv}"
  },
  "creditCardHolderInfo": {
    "name": "${name}",
    "email": "${email}",
    "cpfCnpj": "${cpfCnpj}",
    "postalCode": "${postalCode}",
    "addressNumber": "${addressNumber}",
    "phone": "${phone}"
  },
  "customer": "${customer}",
  "value": ${value},
  "dueDate": "${dueDate}",
  "description": "${description}",
  "installmentCount": ${installmentCountQtdParcelas},
  "installmentValue": ${installmentValueParcela},
  "remoteIp": "${remoteIp}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Asaas Cobranca',
      apiUrl: 'https://api.asaas.com/v3/payments/',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'access_token':
            '\$aact_prod_000MzkwODA2MWY2OGM3MWRlMDU2NWM3MzJlNzZmNGZhZGY6OjJkNTAzYTVlLTc0YWQtNGNmOS1hY2U4LTliYzRlYWU4YzdjMzo6JGFhY2hfZjhkOWRlODUtNjdmOC00ZjcxLWFmZGUtOWQzNDQyNGMyMzg5',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? idCobranca(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? valorPrimeiraCobranca(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.value''',
      ));
  static double? valorLiquidoPrimeiraCobranca(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.netValue''',
      ));
  static String? descricao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static int? parcela(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.installmentNumber''',
      ));
  static String? linkCobranca(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.invoiceUrl''',
      ));
  static String? invoiceNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.invoiceNumber''',
      ));
  static String? comprovante(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.transactionReceiptUrl''',
      ));
  static String? ultimosDigitosCartao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.creditCard.creditCardNumber''',
      ));
}

class AsaasAssinaturaCall {
  static Future<ApiCallResponse> call({
    String? customer = '',
    double? value,
    String? nextDueDate = '',
    String? description = '',
    String? holderName = '',
    String? number = '',
    String? expiryMonth = '',
    String? expiryYear = '',
    String? ccv = '',
    String? name = '',
    String? email = '',
    String? cpfCnpj = '',
    String? postalCode = '',
    String? addressNumber = '',
    String? phone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "billingType": "CREDIT_CARD",
  "cycle": "MONTHLY",
  "creditCard": {
    "holderName": "${holderName}",
    "number": "${number}",
    "expiryMonth": "${expiryMonth}",
    "expiryYear": "${expiryYear}",
    "ccv": "${ccv}"
  },
  "creditCardHolderInfo": {
    "name": "${name}",
    "email": "${email}",
    "cpfCnpj": "${cpfCnpj}",
    "postalCode": "${postalCode}",
    "addressNumber": "${addressNumber}",
    "phone": "${phone}"
  },
  "customer": "${customer}",
  "value": ${value},
  "nextDueDate": "${nextDueDate}",
  "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Asaas Assinatura',
      apiUrl: 'https://api.asaas.com/v3/subscriptions/',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'access_token':
            '\$aact_prod_000MzkwODA2MWY2OGM3MWRlMDU2NWM3MzJlNzZmNGZhZGY6OjJkNTAzYTVlLTc0YWQtNGNmOS1hY2U4LTliYzRlYWU4YzdjMzo6JGFhY2hfZjhkOWRlODUtNjdmOC00ZjcxLWFmZGUtOWQzNDQyNGMyMzg5',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? subAssinatura(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? valor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.value''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? descErro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errors[:].description''',
      ));
}

class CancelarAssinaturaCall {
  static Future<ApiCallResponse> call({
    String? id = 'sub_yinnibbuuciclrhv',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Cancelar Assinatura',
      apiUrl: 'https://api.asaas.com/v3/subscriptions/${id}',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'access_token':
            '\$aact_prod_000MzkwODA2MWY2OGM3MWRlMDU2NWM3MzJlNzZmNGZhZGY6OjJkNTAzYTVlLTc0YWQtNGNmOS1hY2U4LTliYzRlYWU4YzdjMzo6JGFhY2hfZjhkOWRlODUtNjdmOC00ZjcxLWFmZGUtOWQzNDQyNGMyMzg5',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? idAssinatura(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? dataCriacao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dateCreated''',
      ));
  static String? idCliente(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer''',
      ));
  static String? descricao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? dataProximaCobranca(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.nextDueDate''',
      ));
}

class CriarSubcontaAsaasCall {
  static Future<ApiCallResponse> call({
    String? nameLoja = '',
    String? email = '',
    String? cpfCnpj = '',
    String? mobilePhone = '',
    double? incomeValue,
    String? addres = '',
    String? addresNumber = '',
    String? bairro = '',
    String? cep = '',
    String? companyType = '',
    String? birthdate = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${nameLoja}",
  "email": "${email}",
  "cpfCnpj": "${cpfCnpj}",
  "mobilePhone": "${mobilePhone}",
  "incomeValue": ${incomeValue},
  "address": "${addres}",
  "addressNumber": "${addresNumber}",
  "province": "${bairro}",
  "postalCode": "${cep}",
  "birthDate": "${birthdate}",
  "companyType": "${companyType}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Subconta Asaas',
      apiUrl: 'https://api.asaas.com/v3/accounts',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'access_token':
            '\$aact_prod_000MzkwODA2MWY2OGM3MWRlMDU2NWM3MzJlNzZmNGZhZGY6OjJkNTAzYTVlLTc0YWQtNGNmOS1hY2U4LTliYzRlYWU4YzdjMzo6JGFhY2hfZjhkOWRlODUtNjdmOC00ZjcxLWFmZGUtOWQzNDQyNGMyMzg5',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? erro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errors[:].description''',
      ));
  static String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? walletId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.walletId''',
      ));
  static String? apiKey(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.apiKey''',
      ));
  static String? agency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accountNumber.agency''',
      ));
  static String? accountAsaas(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountNumber.account''',
      ));
  static String? accountAsaasDigit(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountNumber.accountDigit''',
      ));
  static String? personType(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.personType''',
      ));
  static String? companyType(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.companyType''',
      ));
}

class AsaasCobrancaLojaCall {
  static Future<ApiCallResponse> call({
    String? customer = 'cus_000006064005',
    double? value = 100,
    String? dueDate = '2024-07-02',
    String? description = 'pedido 123456',
    String? walletId = '',
    double? taxa,
  }) async {
    final ffApiRequestBody = '''
{
  "split": [
    {
      "walletId": "${walletId}",
      "percentualValue": ${taxa}
    }
  ],
  "billingType": "UNDEFINED",
  "customer": "${customer}",
  "value": ${value},
  "dueDate": "${dueDate}",
  "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Asaas Cobranca Loja',
      apiUrl: 'https://api.asaas.com/v3/payments',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'access_token':
            '\$aact_prod_000MzkwODA2MWY2OGM3MWRlMDU2NWM3MzJlNzZmNGZhZGY6OjJkNTAzYTVlLTc0YWQtNGNmOS1hY2U4LTliYzRlYWU4YzdjMzo6JGFhY2hfZjhkOWRlODUtNjdmOC00ZjcxLWFmZGUtOWQzNDQyNGMyMzg5',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? idPgto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? invoiceUrl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.invoiceUrl''',
      ));
  static String? linkBoleto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bankSlipUrl''',
      ));
  static String? erro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errors[:].description''',
      ));
}

class BuscaEnderecoPeloCEPCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Busca endereco pelo CEP',
      apiUrl: 'https://viacep.com.br/ws/${cep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
}

class AgendarNFCall {
  static Future<ApiCallResponse> call({
    String? paymentId = '',
    double? value,
    String? effectiveDate = '',
  }) async {
    final ffApiRequestBody = '''
{
  "taxes": {
    "retainIss": true,
    "iss": 3,
    "cofins": 3,
    "csll": 1,
    "inss": 0,
    "ir": 1.5,
    "pis": 0.65
  },
  "payment": "${paymentId}",
  "serviceDescription": "Serviço de direito ao uso de programa de computação",
  "observations": "Referente ao plano contratado no app CandSys - Gestão Política",
  "value": ${value},
  "effectiveDate": "${effectiveDate}",
  "municipalServiceName": "Análise e desenvolvimento de sistemas",
  "municipalServiceCode": "02836"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Agendar NF',
      apiUrl: 'https://asaas.com/api/v3/invoices',
      callType: ApiCallType.POST,
      headers: {
        'User-Agent': 'User-Agent',
        'accept': 'application/json',
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDA0NTMwOTE6OiRhYWNoX2EzNjM5MzIzLTc4MzUtNDhhNC1iZWZkLTA4OTMwYmM5ODMyZg==',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? idInvoice(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? paymentId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.payment''',
      ));
  static String? customerId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer''',
      ));
  static String? effectiveDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.effectiveDate''',
      ));
}

class ListaNotaCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Lista nota',
      apiUrl:
          'https://asaas.com/api/v3/invoices?payment=pay_wc969ho3ra1z6kyk\'',
      callType: ApiCallType.GET,
      headers: {
        'User-Agent': 'User-Agent',
        'accept': 'application/json',
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDA0NTMwOTE6OiRhYWNoX2EzNjM5MzIzLTc4MzUtNDhhNC1iZWZkLTA4OTMwYmM5ODMyZg==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EmitirNFCall {
  static Future<ApiCallResponse> call({
    String? invoiceID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Emitir NF',
      apiUrl: 'https://asaas.com/api/v3/invoices/${invoiceID}/authorize',
      callType: ApiCallType.POST,
      headers: {
        'User-Agent': 'User-Agent',
        'accept': 'application/json',
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDA0NTMwOTE6OiRhYWNoX2EzNjM5MzIzLTc4MzUtNDhhNC1iZWZkLTA4OTMwYmM5ODMyZg==',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EstornarCobrancaCall {
  static Future<ApiCallResponse> call({
    String? idPgto = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Estornar cobranca',
      apiUrl: 'https://api.asaas.com/v3/payments/${idPgto}/refund',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json',
        'User-Agent': 'User-Agent',
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDA0NTMwOTE6OiRhYWNoX2EzNjM5MzIzLTc4MzUtNDhhNC1iZWZkLTA4OTMwYmM5ODMyZg==',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? idPgto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? clientAsaas(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer''',
      ));
  static double? valor(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.value''',
      ));
  static String? pedido(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? erro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errors[:].description''',
      ));
}

class RemoverClienteAsaasCall {
  static Future<ApiCallResponse> call({
    String? customerId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Remover cliente Asaas',
      apiUrl: 'https://api.asaas.com/v3/customers/${customerId}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class StripeCriarSessaoCheckoutCall {
  static Future<ApiCallResponse> call({
    String? price = 'price_1PnR1NP9P6aACoJNzRA77XNG',
    String? customerEmail = 'alexdejesusbomfim+ios2@gmail.com',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Stripe Criar sessao checkout',
      apiUrl: 'https://api.stripe.com/v1/checkout/sessions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
        'Bearer ${stripeSecretKey}',
      },
      params: {
        'success_url': "https://app.candsys.com.br/obrigado",
        'line_items[0][price]': price,
        'line_items[0][quantity]': 1,
        'mode': "subscription",
        'customer_email': customerEmail,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? idPgtoStripe(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? urlPgtoAssinatura(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
  static String? statusPgto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_status''',
      ));
}

class StripeEstornoAssinaturaCall {
  static Future<ApiCallResponse> call({
    String? price = 'price_1PnR1NP9P6aACoJNzRA77XNG',
    String? customerEmail = 'alexdejesusbomfim+ios2@gmail.com',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Stripe Estorno Assinatura',
      apiUrl: 'https://api.stripe.com/v1/refunds',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
        'Bearer ${stripeSecretKey}',
      },
      params: {
        'payment_intent': "pi_3PnAGgP9P6aACoJN1UAaXmnK",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? idPgtoStripe(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? urlPgtoAssinatura(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
  static String? statusPgto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_status''',
      ));
}

class StripeVerificarPgtoAssinaturaCall {
  static Future<ApiCallResponse> call({
    String? id =
        'cs_test_a1rJ4R1ISK4V6cTtivwFsptvKeeQUsYRzpCjiRx2BEOTOM3mMNU4tr5hgu',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Stripe Verificar pgto assinatura',
      apiUrl: 'https://api.stripe.com/v1/checkout/sessions/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
        'Bearer ${stripeSecretKey}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? idPgtoAssinatura(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? statusPgto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_status''',
      ));
  static String? customer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer''',
      ));
  static String? idAssinatura(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.subscription''',
      ));
}

class StripeVerificarStatusAssinaturaCall {
  static Future<ApiCallResponse> call({
    String? id = 'sub_1PnRmfP9P6aACoJNkZV2zJOK',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Stripe Verificar status assinatura ',
      apiUrl: 'https://api.stripe.com/v1/subscriptions/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
        'Bearer ${stripeSecretKey}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static bool? assAtiva(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.items.data[:].plan.active''',
      ));
}

class CancelarAssinaturaMensalCall {
  static Future<ApiCallResponse> call({
    String? id = 'sub_1PnRmfP9P6aACoJNkZV2zJOK',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Cancelar Assinatura Mensal',
      apiUrl: 'https://api.stripe.com/v1/subscriptions/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
        'Bearer ${stripeSecretKey}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? statusAssinatura(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class GPTMensagemSimplesCall {
  static Future<ApiCallResponse> call({
    String? mensagem = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "gpt-5-mini",
  "input": "${escapeStringForJson(mensagem)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GPT mensagem simples',
      apiUrl: 'https://api.openai.com/v1/responses',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
        'Bearer ${openAiApiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? resposta(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.output[:].content[:].text''',
      ));
}

class BuscaQuestionsCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Busca questions',
      apiUrl:
          'https://rqhqqnxgwgjlyioizhfd.supabase.co/rest/v1/survey_questions?survey_id=eq.${id}&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJxaHFxbnhnd2dqbHlpb2l6aGZkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDgzNDgzNTIsImV4cCI6MjA2MzkyNDM1Mn0.Z5kUHc2sC64xUNWPJ8yONR9NMc_sU-bhc23m30EocD0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJxaHFxbnhnd2dqbHlpb2l6aGZkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDgzNDgzNTIsImV4cCI6MjA2MzkyNDM1Mn0.Z5kUHc2sC64xUNWPJ8yONR9NMc_sU-bhc23m30EocD0',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
