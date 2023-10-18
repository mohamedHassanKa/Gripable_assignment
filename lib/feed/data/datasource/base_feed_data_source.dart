import 'package:gripable_assignment/core/types/sort_type.dart';
import 'package:gripable_assignment/feed/data/models/feed_data.dart';

/// {@template base_feed_data_source}
/// API layer to fetch feed data
/// {@endtemplate}
abstract class BaseFeedDataSource {
  /// {@macro base_feed_data_source}
  const BaseFeedDataSource();

  /// Returns a list of [FeedData] based on type
  Future<FeedData> fetchPosts(
    String subredditName,
    SortType sortType, {
    String? after,
  });
}
