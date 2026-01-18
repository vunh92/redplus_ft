import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'treatment.g.dart';

@JsonSerializable()
class TreatmentModel extends Equatable {
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

  const TreatmentModel({
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

  factory TreatmentModel.fromJson(Map<String, dynamic> json) =>
      _$TreatmentModelFromJson(json);

  Map<String, dynamic> toJson() => _$TreatmentModelToJson(this);

  @override
  List<Object?> get props => [id, imageUrl, title, content];
}
