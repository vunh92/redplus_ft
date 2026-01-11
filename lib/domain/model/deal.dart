import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'deal.g.dart';

@JsonSerializable()
class DealModel extends Equatable {
  final String id;
  final String userId;
  final String imageUrl;
  final String title;
  final String content;
  final int point;
  final String endDate;
  final String status;
  final String createdAt;
  final String updatedAt;

  const DealModel({
    this.id = '',
    this.userId = '',
    this.imageUrl = '',
    this.title = '',
    this.content = '',
    this.point = 0,
    this.endDate = '',
    this.status = '',
    this.createdAt = '',
    this.updatedAt = '',
  });

  factory DealModel.fromJson(Map<String, dynamic> json) =>
      _$DealModelFromJson(json);

  Map<String, dynamic> toJson() => _$DealModelToJson(this);

  @override
  List<Object?> get props => [id, imageUrl, title, content];
}
