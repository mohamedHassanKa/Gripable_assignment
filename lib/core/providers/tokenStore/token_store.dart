import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:grippable_reddit/core/models/authResultModel/auth_result_model.dart';
import 'package:grippable_reddit/core/services/httpServiceProvider/api_response.dart';
import 'package:grippable_reddit/core/services/tokenAuthService/token_auth.dart';
import 'package:grippable_reddit/router/app_router.dart';
import 'package:grippable_reddit/screens/HotListingsScreen/hot_listings_screen.dart';
import 'package:grippable_reddit/utils/app_constants.dart';
import 'package:grippable_reddit/utils/toast_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_store.g.dart';

@Riverpod(keepAlive: true)
class TokenStore extends _$TokenStore {
  @override
  String build() {
    return "";
  }

  Future getAccessToken() async {
    final authService = ref.read(tokenAuthServiceProvider);

    FlutterAppAuth appAuth = const FlutterAppAuth();

    final result = await AsyncValue.guard(() => appAuth.authorize(
          AuthorizationRequest(dotenv.env['CLIENT_ID']!, 'ap://com.grippable',
              serviceConfiguration: const AuthorizationServiceConfiguration(
                  authorizationEndpoint: '$apiBaseUrl/v1/authorize',
                  tokenEndpoint: '$apiBaseUrl/v1/access_token'),
              scopes: [
                'read',
              ]),
        ));

    if (result.hasError || result.value?.authorizationCode == null) {
      ToastService.showToast("Error getting access token",
          toastType: ToastType.error);
      return;
    }

    final authorizationCode = result.value!.authorizationCode;

    ApiResponse response = await authService.getAccessToken({
      'grant_type': 'authorization_code',
      'code': authorizationCode,
      'redirect_uri': 'ap://com.grippable',
    });

    if (response.kind != ApiResponseKind.ok) {
      ToastService.showToast("Error getting access token",
          toastType: ToastType.error);
      return;
    }

    final authResult = AuthenticationResultModel.fromJson(response.data);

    state = authResult.access_token;

    print(state);

    ToastService.showToast("Successfully logged in",
        toastType: ToastType.success);

    appRouter.goNamed(HotListingsScreen.routePath);
  }
}
