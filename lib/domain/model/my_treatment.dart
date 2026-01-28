import 'package:hive/hive.dart';

part 'my_treatment.g.dart';

@HiveType(typeId: 2)
class MyTreatment extends HiveObject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String userId;
  @HiveField(2)
  final String imageUrl;
  @HiveField(3)
  final String title;
  @HiveField(4)
  final String content;
  @HiveField(5)
  final String code;
  @HiveField(6)
  final String endDate;
  @HiveField(7)
  final String status;
  @HiveField(8)
  final String createdAt;
  @HiveField(9)
  final String updatedAt;

  MyTreatment({
    this.id = '',
    this.userId = '',
    this.imageUrl = '',
    this.title = '',
    this.content = '',
    this.code = '',
    this.endDate = '',
    this.status = '',
    this.createdAt = '',
    this.updatedAt = '',
  });

  factory MyTreatment.fromJson(Map<String, dynamic> json) => MyTreatment(
    id: json['id'] as String? ?? '',
    userId: json['userId'] as String? ?? '',
    imageUrl: json['imageUrl'] as String? ?? '',
    title: json['title'] as String? ?? '',
    content: json['content'] as String? ?? '',
    code: json['code'] as String? ?? '',
    endDate: json['endDate'] as String? ?? '',
    status: json['status'] as String? ?? '',
    createdAt: json['createdAt'] as String? ?? '',
    updatedAt: json['updatedAt'] as String? ?? '',
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'imageUrl': imageUrl,
    'title': title,
    'content': content,
    'code': code,
    'endDate': endDate,
    'status': status,
    'createdAt': createdAt,
    'updatedAt': updatedAt,
  };

  @override
  List<Object?> get props => [id, imageUrl, title, content];
}
