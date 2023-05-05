// flutter
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
// constants
import 'package:app/constants/env_value.dart';
// types
import 'package:app/types/response.dart';
import 'package:app/types/response_factory.dart';
import 'package:app/types/request_factory.dart';

class HttpService {
  final String baseURL;

  HttpService({this.baseURL = EnvValue.apiUrl});

  Future<ResponseData<R>> get<R>({
    required String path,
    required ResponseFactory<R> responseFactory,
    bool? auth = false,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await http
          .get(
            Uri.parse('$baseURL$path'),
            headers: await _getHeaders(auth: auth, headers: headers),
          )
          .timeout(
            const Duration(seconds: 5),
          );

      return _replyWithData(
          response.statusCode, response.body, responseFactory);
    } on TimeoutException {
      return ResponseData(
        code: 400,
        status: false,
        message: 'Timeout',
        data: responseFactory.fromJson({}),
      );
    }
  }

  Future<Response> post({
    required String path,
    required RequestFactory requestFactory,
    bool? auth = false,
    Map<String, String>? headers,
  }) async {
    try {
      String bodyEncode = jsonEncode(requestFactory.toJson());

      final response = await http
          .post(
            Uri.parse('$baseURL$path'),
            body: bodyEncode,
            headers: await _getHeaders(auth: auth, headers: headers),
          )
          .timeout(
            const Duration(seconds: 5),
          );

      return _reply(response.statusCode, response.body);
    } on TimeoutException {
      return Response(
        code: 400,
        status: false,
        message: 'Timeout',
      );
    }
  }

  Future<ResponseData<R>> postReply<R>({
    required String path,
    required RequestFactory requestFactory,
    required ResponseFactory<R> responseFactory,
    bool? auth = false,
    Map<String, String>? headers,
  }) async {
    try {
      String bodyEncode = jsonEncode(requestFactory.toJson());

      final response = await http
          .post(
            Uri.parse('$baseURL$path'),
            body: bodyEncode,
            headers: await _getHeaders(auth: auth, headers: headers),
          )
          .timeout(
            const Duration(seconds: 5),
          );

      return _replyWithData(
          response.statusCode, response.body, responseFactory);
    } on TimeoutException {
      return ResponseData(
        code: 400,
        status: false,
        message: 'Timeout',
        data: responseFactory.fromJson({}),
      );
    }
  }

  // Headers construction

  Future<Map<String, String>> _getHeaders({
    bool? auth = false,
    Map<String, String>? headers,
  }) async {
    // TODO: Get language from storage
    return {
      'Content-Type': 'application/json',
      'lang': 'en',
      ...auth! ? await _getAuthorizationHeaders() : {},
      ...(headers ?? {}),
    };
  }

  Future<Map<String, String>> _getAuthorizationHeaders() async {
    // TODO: Get token from secure storage
    return {'Authorization': 'Bearer '};
  }

  // Response construction

  Response _reply(int code, String body) {
    Map<String, dynamic> json = jsonDecode(body) ?? {};

    return Response(
      code: code,
      status: json['status'] ?? false,
      message: json['message'] ?? '',
    );
  }

  ResponseData<T> _replyWithData<T>(
    int code,
    String body,
    ResponseFactory<T> rFactory,
  ) {
    Map<String, dynamic> json = jsonDecode(body) ?? {};

    return ResponseData<T>(
      code: code,
      status: json['status'] ?? false,
      message: json['message'] ?? '',
      data: rFactory.fromJson(json['data']),
    );
  }
}
