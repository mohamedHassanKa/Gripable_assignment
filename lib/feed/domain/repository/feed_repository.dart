import 'package:gripable_assignment/core/types/sort_type.dart';
import 'package:gripable_assignment/feed/data/data.dart';

/// {@template feed_repository}
/// Repository to fetch posts
/// {@endtemplate}
class FeedRepository {
  /// {@macro feed_repository}
  const FeedRepository({required BaseFeedDataSource dataSource})
      : _dataSource = dataSource;

  final BaseFeedDataSource _dataSource;

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
