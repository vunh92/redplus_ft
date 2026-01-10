import 'dart:convert';

import 'package:equatable/equatable.dart';

class Otp extends Equatable {
  final String phone;
  final String otp;

  const Otp(this.phone, this.otp);

  Map<String, String> toMap() {
    return {
      'phone': phone,
      'otp': otp,
    };
  }

  factory Otp.fromMap(Map<String, dynamic> map) {
    return Otp(
      map['phone'],
      map['otp'],
    );
  }

  String toJson() => json.encode(toMap());
  factory Otp.fromJson(String source) => Otp.fromMap(json.decode(source));

  @override
  List<Object?> get props => [];
}