import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'banner.g.dart';

@JsonSerializable()
class BannerModel extends Equatable {
  final String id;
  final String imageUrl;
  final String title;
  final String content;

  const BannerModel({
    this.id = '',
    this.imageUrl = '',
    this.title = '',
    this.content = '',
  });

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);

  Map<String, dynamic> toJson() => _$BannerModelToJson(this);

  @override
  List<Object?> get props => [id, imageUrl, title, content];
}
