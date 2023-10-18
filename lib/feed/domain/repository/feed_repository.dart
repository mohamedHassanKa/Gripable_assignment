import 'package:gripable_assignment/core/types/sort_type.dart';
import 'package:gripable_assignment/feed/data/datasource/feed_data_source.dart';
import 'package:gripable_assignment/feed/data/models/models.dart';

/// {@template feed_repository}
/// Repository to fetch posts
/// {@endtemplate}
class FeedRepository {
  /// {@macro feed_repository}
  const FeedRepository({required FeedDataSource dataSource})
      : _dataSource = dataSource;

  final FeedDataSource _dataSource;

  /// get posts by [SortType]
  Future<FeedData> fetchPosts(
    String subredditName,
    SortType sortType, {
    String? after,
  }) =>
      _dataSource.fetchPosts(
        subredditName,
        sortType,
        after: after,
      );
}
