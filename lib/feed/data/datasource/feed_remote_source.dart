import 'package:dio/dio.dart';
import 'package:gripable_assignment/core/types/sort_type.dart';
import 'package:gripable_assignment/feed/data/datasource/feed_data_source.dart';
import 'package:gripable_assignment/feed/data/models/models.dart';

class FeedRemoteSource implements FeedDataSource {
  const FeedRemoteSource({required this.dio});

  final Dio dio;

  @override
  Future<FeedData> fetchPosts(
    String subredditName,
    SortType sortType, {
    String? after,
  }) async {
    final path = 'r/$subredditName/${sortType.key}.json';
    try {
      final response = await dio.get<Map<String, dynamic>>(
        path,
        queryParameters: {
          'after': after,
        },
      );
      if (response.statusCode == 200 && response.data != null) {
        final data = response.data!['data'] as Map<String, dynamic>;
        return FeedData.fromJson(data);
      } else {
        throw Exception('Failed to load posts ');
      }
    } catch (e) {
      throw Exception('Failed to load posts: $e');
    }
  }
}
