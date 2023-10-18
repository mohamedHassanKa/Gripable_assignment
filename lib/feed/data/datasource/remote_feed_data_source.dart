import 'package:dio/dio.dart';
import 'package:gripable_assignment/core/types/sort_type.dart';
import 'package:gripable_assignment/feed/data/datasource/base_feed_data_source.dart';
import 'package:gripable_assignment/feed/data/models/feed_data.dart';

class RemoteFeedDataSource implements BaseFeedDataSource {
  const RemoteFeedDataSource({required this.dio});

  final Dio dio;

  @override
  Future<FeedData> fetchPosts(
    String subredditName,
    SortType sortType, {
    String? after,
  }) async {
    final path = 'r/$subredditName/${sortType.key}.json';
    final response = await dio.get<Map<String, dynamic>>(
      path,
      queryParameters: {
        'after': after,
      },
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return FeedData.fromJson(data);
  }
}
