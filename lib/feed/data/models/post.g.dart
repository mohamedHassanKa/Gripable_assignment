// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      kind: json['kind'] as String,
      data: PostData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'data': instance.data,
    };

_$PostDataImpl _$$PostDataImplFromJson(Map<String, dynamic> json) =>
    _$PostDataImpl(
      title: json['title'] as String,
      selfText: json['selftext'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$PostDataImplToJson(_$PostDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'selftext': instance.selfText,
      'url': instance.url,
    };
