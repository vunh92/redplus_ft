import 'dart:convert';

class SignUpRequest {
  String name;
  String username;
  String password;

  SignUpRequest(this.name, this.username, this.password);

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'username': username,
      'password': password,
    };
  }

  String toJson() => jsonEncode(toMap());
}