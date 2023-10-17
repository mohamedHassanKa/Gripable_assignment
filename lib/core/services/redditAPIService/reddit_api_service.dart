import 'package:grippable_reddit/core/services/httpServiceProvider/api_response.dart';
import 'package:grippable_reddit/core/services/httpServiceProvider/http_service.dart';
import 'package:grippable_reddit/core/services/httpServiceProvider/http_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reddit_api_service.g.dart';

class RedditAPIService {
  final HttpService _httpService;

  RedditAPIService(this._httpService);

  Future<ApiResponse> getHotListings({
    String? after,
    int? limit = 10,
  }) async {
    return await _httpService.get(
      '/r/FlutterDev/hot.json',
      queryParameters: {
        'after': after,
        'limit': limit,
      },
    );
  }

  Future<ApiResponse> getNewListings({
    String? after,
    int? limit = 10,
  }) async {
    return await _httpService.get(
      '/v1/r/FlutterDev/new.json',
      queryParameters: {
        'after': after,
        'limit': limit,
      },
    );
  }

  Future<ApiResponse> getRisingListings({
    String? after,
    int? limit = 10,
  }) async {
    return await _httpService
        .get('/v1/r/FlutterDev/rising.json', queryParameters: {
      'after': after,
      'limit': limit,
    });
  }
}

@riverpod
RedditAPIService redditApiService(RedditApiServiceRef ref) {
  final httpService = ref.watch(httpServiceProvider);

  return RedditAPIService(httpService);
}
