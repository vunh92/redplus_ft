import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'api_url.dart';
import '../request/sign_in_request.dart';
import '../request/sign_up_request.dart';

@LazySingleton()
class AuthApi {
  Future<http.Response> signInOtp(String phone) async {
    try {
      // http.Response res = await http.post(Uri.parse(signUpUrl),
      //     body: {'phone': phone},
      //     headers: <String, String>{
      //       'Content-Type': 'application/json; charset=UTF-8'
      //     });
      http.Response res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'),
          // body: {'phone': phone},
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8'
          });
      return res;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<http.Response> signUpUser(SignUpRequest signUpRequest) async {
    try {
      http.Response res = await http.post(Uri.parse(signUpUrl),
          body: signUpRequest.toJson(),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8'
          });
      return res;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<http.Response> signInUser(SignInRequest signInRequest) async {
    return await http.post(
      Uri.parse(signInUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(
        {
          'email': signInRequest.username,
          'password': signInRequest.password,
        },
      ),
    );
  }

  Future<http.Response> isTokenValid({required var token}) async {
    try {
      http.Response res =
          await http.get(Uri.parse(isTokenValidUri), headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'auth-token': token,
      });

      return res;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
