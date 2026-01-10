import 'dart:convert';

import 'package:hive/hive.dart';

part 'account.g.dart'; // This file will be generated

@HiveType(typeId: 0) // Unique ID for each TypeAdapter
class Account extends HiveObject {
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? phone;
  @HiveField(2)
  String? username;
  @HiveField(3)
  String? password;
  @HiveField(4)
  String? email;

  Account({
    this.id,
    this.phone,
    this.username,
    this.password,
    this.email,
  });

  Map<String, String> toMap() {
    return {
      'id': id ?? '',
      'phone': phone ?? '',
      'username': username ?? '',
      'password': password ?? '',
      'email': email ?? '',
    };
  }

  factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      id: map['id'] ,
      phone: map['phone'],
      username: map['username'],
      password: map['password'],
      email: map['email'],
    );
  }

  String toJson() => json.encode(toMap());
  factory Account.fromJson(String source) => Account.fromMap(json.decode(source));

  List<Object?> get props => [];
}