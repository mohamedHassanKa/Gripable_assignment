import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gripable_assignment/feed/data/models/post.dart';

part 'feed_data.freezed.dart';
part 'feed_data.g.dart';

@freezed
class FeedData with _$FeedData {
  const factory FeedData({
    required List<Post> children,
    required String after,
  }) = _FeedData;

  factory FeedData.fromJson(Map<String, dynamic> json) =>
      _$FeedDataFromJson(json);
}
