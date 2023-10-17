// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RedditListingImpl _$$RedditListingImplFromJson(Map<String, dynamic> json) =>
    _$RedditListingImpl(
      after: json['after'] as String?,
      items: (json['children'] as List<dynamic>?)
              ?.map(
                  (e) => RedditListingItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RedditListingImplToJson(_$RedditListingImpl instance) =>
    <String, dynamic>{
      'after': instance.after,
      'children': instance.items,
    };

_$RedditListingItemImpl _$$RedditListingItemImplFromJson(
        Map<String, dynamic> json) =>
    _$RedditListingItemImpl(
      selftext: json['selftext'] as String?,
      permalink: json['permalink'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$RedditListingItemImplToJson(
        _$RedditListingItemImpl instance) =>
    <String, dynamic>{
      'selftext': instance.selftext,
      'permalink': instance.permalink,
      'title': instance.title,
    };
