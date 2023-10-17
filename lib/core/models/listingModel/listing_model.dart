import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'listing_model.freezed.dart';
part 'listing_model.g.dart';

@freezed
class RedditListing with _$RedditListing {
  const factory RedditListing({
    String? after,
    @JsonKey(name: "children") @Default([]) List<RedditListingItem>? items,
  }) = _RedditListing;

  factory RedditListing.fromJson(Map<String, dynamic> json) =>
      _$RedditListingFromJson(json);
}

@freezed
class RedditListingItem with _$RedditListingItem {
  const factory RedditListingItem({
    String? selftext,
    String? permalink,
    String? title,
  }) = _RedditListingItem;

  factory RedditListingItem.fromJson(Map<String, dynamic> json) =>
      _$RedditListingItemFromJson(json);
}
