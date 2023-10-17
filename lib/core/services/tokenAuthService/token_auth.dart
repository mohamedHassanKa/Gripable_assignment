import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:grippable_reddit/core/services/httpServiceProvider/api_response.dart';
import 'package:grippable_reddit/core/services/httpServiceProvider/http_service.dart';
import 'package:grippable_reddit/core/services/httpServiceProvider/http_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_auth.g.dart';

class TokenAuthService {
  final HttpService _httpService;

  TokenAuthService(this._httpService);

  Future<ApiResponse> getAccessToken(Map<String, dynamic> payload) async {
    final clientId = dotenv.env['CLIENT_ID'];
    const clientSecret = "";

    return await _httpService.post('/v1/access_token',
        data: payload,
        options: Options(headers: {
          'Authorization':
              'Basic ${base64Encode(utf8.encode('$clientId:$clientSecret'))}'
        }));
  }
}

@riverpod
TokenAuthService tokenAuthService(TokenAuthServiceRef ref) {
  final httpService = ref.watch(httpServiceProvider());
  return TokenAuthService(httpService);
}
