import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'brand_detail.g.dart';

@JsonSerializable()
class BrandDetailModel extends Equatable {
  final String id;
  final String brandId;
  final String districtId;
  final String imageUrl;
  final String title;
  final String content;
  final String address;
  final String phone;
  final String openHour;
  final String link;
  final double lat;
  final double lng;

  const BrandDetailModel({
    this.id = '',
    this.brandId = '',
    this.districtId = '',
    this.imageUrl = '',
    this.title = '',
    this.content = '',
    this.address = '',
    this.phone = '',
    this.openHour = '',
    this.link = '',
    this.lat = 0,
    this.lng = 0,
  });

  factory BrandDetailModel.fromJson(Map<String, dynamic> json) =>
      _$BrandDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$BrandDetailModelToJson(this);

  @override
  List<Object?> get props => [
    id,
    brandId,
    districtId,
    imageUrl,
    title,
    content,
    address,
    phone,
    openHour,
    link,
    lat,
    lng,
  ];
}
