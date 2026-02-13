import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'district.g.dart';

@JsonSerializable()
class DistrictModel extends Equatable {
  final String label;
  final String code;

  const DistrictModel({
    this.label = '',
    this.code = '',
  });

  factory DistrictModel.fromJson(Map<String, dynamic> json) =>
      _$DistrictModelFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictModelToJson(this);

  @override
  List<Object?> get props => [label, code];
}
