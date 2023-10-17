import 'package:grippable_reddit/core/services/httpServiceProvider/api_response.dart';
import 'package:grippable_reddit/core/services/httpServiceProvider/http_service.dart';
import 'package:grippable_reddit/core/services/httpServiceProvider/http_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reddit_api_service.g.dart';

class RedditAPIService {
  final HttpService _httpService;

  RedditAPIService(this._httpService);

  Future<ApiResponse> getHotListings() async {
    return await _httpService.get(
      '/hot.json',
    );
  }

  Future<ApiResponse> getNewListings() async {
    return await _httpService.get(
      '/new.json',
    );
  }

  Future<ApiResponse> getRisingListings() async {
    return await _httpService.get(
      '/rising.json',
    );
  }
}

@riverpod
RedditAPIService redditApiService(RedditApiServiceRef ref) =>
    RedditAPIService(ref.watch(httpServiceProvider()));
