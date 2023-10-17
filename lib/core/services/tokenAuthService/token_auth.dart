import 'package:grippable_reddit/core/services/httpServiceProvider/api_response.dart';
import 'package:grippable_reddit/core/services/httpServiceProvider/http_service.dart';
import 'package:grippable_reddit/core/services/httpServiceProvider/http_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_auth.g.dart';

class TokenAuthService {
  final HttpService _httpService;

  TokenAuthService(this._httpService);

  Future<ApiResponse> getAccessToken() async {
    return await _httpService.post(
      '/api/v1/access_token',
    );
  }
}

@riverpod
TokenAuthService tokenAuthService(TokenAuthServiceRef ref) {
  final httpService = ref.watch(httpServiceProvider());
  return TokenAuthService(httpService);
}
