// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) => BannerModel(
      id: json['id'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
    );

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'content': instance.content,
    };
