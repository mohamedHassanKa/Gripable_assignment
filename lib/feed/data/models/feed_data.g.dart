// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedDataImpl _$$FeedDataImplFromJson(Map<String, dynamic> json) =>
    _$FeedDataImpl(
      children: (json['children'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
      after: json['after'] as String,
    );

Map<String, dynamic> _$$FeedDataImplToJson(_$FeedDataImpl instance) =>
    <String, dynamic>{
      'children': instance.children,
      'after': instance.after,
    };
