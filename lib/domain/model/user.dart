import 'dart:convert';

import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 1)
class User extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  String? username;
  @HiveField(2)
  String? name;
  @HiveField(3)
  String? email;
  @HiveField(4)
  String? password;
  @HiveField(5)
  String? phone;
  @HiveField(6)
  String? address;
  @HiveField(7)
  String? type;
  @HiveField(8)
  String? token;
  @HiveField(9)
  String? avatar;
  @HiveField(10)
  String? tier;
  @HiveField(11)
  int? point;

  User({
    required this.id,
    this.username = '',
    this.name = '',
    this.email = '',
    this.password = '',
    this.phone = '',
    this.address = '',
    this.type = 'user',
    this.token = '',
    this.avatar = '',
    this.tier = '',
    this.point = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
      'address': address,
      'type': type,
      'token': token,
      'avatar': avatar,
      'tier': tier,
      'point': point,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      username: map['username'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      phone: map['phone'] ?? '',
      address: map['address'] ?? '',
      type: map['type'] ?? '',
      token: map['token'] ?? '',
      avatar: map['avatar'] ?? '',
      tier: map['tier'] ?? '',
      point: map['point'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  User copyWith({
    String? username,
    String? name,
    String? email,
    String? password,
    String? phone,
    String? address,
    String? type,
    String? token,
    String? avatar,
    String? tier,
    int? point,
  }) {
    return User(
      id: id,
      username: username ?? this.username,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      type: type ?? this.type,
      token: token ?? this.token,
      avatar: avatar ?? this.avatar,
      tier: tier ?? this.tier,
      point: point ?? this.point,
    );
  }

  List<Object?> get props => [
    id,
    username,
    name,
    email,
    password,
    phone,
    address,
    type,
    token,
    avatar,
    tier,
    point,
  ];
}
