import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ExchangeTokenBuildShipCall {
  static Future<ApiCallResponse> call({
    String? user = '',
    String? token = '',
    String? refreshtoken = '',
    String? name = '',
    String? email = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'exchange token build ship',
      apiUrl:
          'https://o775fm.buildship.run/tokenExchangeGoogleOauth?user=${user}&token=${token}&refreshtoken=${refreshtoken}&name=${name}&email=${email}',
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
}

class ExchangeAuthorizationCodeForRefreshAndAccessTokensCall {
  static Future<ApiCallResponse> call({
    String? code = '',
    String? clientId =
        '633677209986-ts4b909gjsck167qvvhcfvd94kockufa.apps.googleusercontent.com',
    String? clientSecret = '',
    String? redirectUri =
        'https://class-retriver-exchange-token-0tf3vi.flutterflow.app',
    String? grantType = 'authorization_code',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Exchange authorization code for refresh and access tokens',
      apiUrl:
          'https://oauth2.googleapis.com/token?code=${code}&client_id=${clientId}&client_secret=${clientSecret}&redirect_uri=${redirectUri}&grant_type=authorization_code',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'code': code,
        'client_id': clientId,
        'client_secret': clientSecret,
        'redirect_uri': redirectUri,
        'grant_type': grantType,
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
}

class PreviousConnectionCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'previous connection',
      apiUrl: 'https://o775fm.buildship.run/previousconnection?email=${email}',
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
}

class AddUidToListCall {
  static Future<ApiCallResponse> call({
    String? uid = '',
    String? studentemail = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'add uid to list',
      apiUrl:
          'https://o775fm.buildship.run/adduid?uid=${uid}&studentemail=${studentemail}',
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
}

class QRUsedCall {
  static Future<ApiCallResponse> call({
    String? ref = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'QR Used',
      apiUrl: 'https://o775fm.buildship.run/qr?ref=${ref}',
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
