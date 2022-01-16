// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gto_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GtoNews _$$_GtoNewsFromJson(Map<String, dynamic> json) => _$_GtoNews(
      id: json['id'] as int,
      albumId: json['albumId'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$$_GtoNewsToJson(_$_GtoNews instance) =>
    <String, dynamic>{
      'id': instance.id,
      'albumId': instance.albumId,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
