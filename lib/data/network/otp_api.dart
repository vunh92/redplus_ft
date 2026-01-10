import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'api_url.dart';

@Injectable()
class OtpApi {
  Future<http.Response> submitOtp(String otp) async {
    try {
      // http.Response res = await http.post(Uri.parse(submitOtpUrl),
      //     body: {'otp': otp},
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
}