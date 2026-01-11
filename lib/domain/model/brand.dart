import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'brand.g.dart';

@JsonSerializable()
class BrandModel extends Equatable {
  final String id;
  final String imageUrl;
  final String title;
  final String content;

  const BrandModel({
    this.id = '',
    this.imageUrl = '',
    this.title = '',
    this.content = '',
  });

  factory BrandModel.fromJson(Map<String, dynamic> json) =>
      _$BrandModelFromJson(json);

  Map<String, dynamic> toJson() => _$BrandModelToJson(this);

  @override
  List<Object?> get props => [id, imageUrl, title, content];
}
