import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendEmailToCall {
  static Future<ApiCallResponse> call({
    String? to = '',
    String? subject = '',
    String? content = '',
  }) async {
    final ffApiRequestBody = '''
{
  "to": "${to}",
  "subject": "${subject}",
  "content": "${content}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendEmailTo',
      apiUrl: 'https://wwu6no.buildship.run/sendemail',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
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

class SendSMSCall {
  static Future<ApiCallResponse> call({
    String? numero = '',
    String? message = '',
  }) async {
    final ffApiRequestBody = '''
{
  "numero": "${numero}",
  "message": "${message}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendSMS',
      apiUrl: 'https://wwu6no.buildship.run/sensms',
      callType: ApiCallType.POST,
      headers: {},
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

class SendEmailCall {
  static Future<ApiCallResponse> call({
    String? to = '',
    String? subject = '',
    String? message = '',
  }) async {
    final ffApiRequestBody = '''
{
  "personalizations": [
    {
      "to": [
        {
          "email": "${to}",
          "name": ""
        }
      ],
      "subject": "${subject}"
    }
  ],
  "from": {
    "email": "notifications@wewaexpress.com",
    "name": "Wewa Express"
  },
  "reply_to": {
    "email": "notifications@wewaexpress.com",
    "name": "Wewa Express"
  },
  "content": [
    {
      "type": "text/plain",
      "value": "${message}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendEmail',
      apiUrl: 'https://api.sendgrid.com/v3/mail/send',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Content-Type': 'application/json',
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
