import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@Injectable()
class SignUpApi {
  Future<http.Response> submitPhoneNumber(String phone) async {
    try {
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

  Future<http.Response> submitAccount(String username, String password) async {
    try {
      http.Response res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'),
          // body: {'username': username, 'password': password},
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8'
          });
      return res;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}