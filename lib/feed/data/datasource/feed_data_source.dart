import 'package:gripable_assignment/core/types/sort_type.dart';

import 'package:gripable_assignment/feed/data/models/models.dart';

/// {@template feed_datq_source}
/// API layer to fetch feed data
/// {@endtemplate}
abstract class FeedDataSource {
  /// {@macro feed_data_source}
  const FeedDataSource();

  /// Returns a list of [FeedData] based on type
  Future<FeedData> fetchPosts(
    String subredditName,
    SortType sortType, {
    String? after,
  });
}
