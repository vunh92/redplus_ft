// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandDetailModel _$BrandDetailModelFromJson(Map<String, dynamic> json) =>
    BrandDetailModel(
      id: json['id'] as String? ?? '',
      brandId: json['brandId'] as String? ?? '',
      districtId: json['districtId'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
      address: json['address'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      openHour: json['openHour'] as String? ?? '',
      link: json['link'] as String? ?? '',
      lat: (json['lat'] as num?)?.toDouble() ?? 0,
      lng: (json['lng'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$BrandDetailModelToJson(BrandDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brandId': instance.brandId,
      'districtId': instance.districtId,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'content': instance.content,
      'address': instance.address,
      'phone': instance.phone,
      'openHour': instance.openHour,
      'link': instance.link,
      'lat': instance.lat,
      'lng': instance.lng,
    };
