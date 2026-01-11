// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DealModel _$DealModelFromJson(Map<String, dynamic> json) => DealModel(
      id: json['id'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
      point: (json['point'] as num?)?.toInt() ?? 0,
      endDate: json['endDate'] as String? ?? '',
      status: json['status'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
    );

Map<String, dynamic> _$DealModelToJson(DealModel instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'content': instance.content,
      'point': instance.point,
      'endDate': instance.endDate,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
