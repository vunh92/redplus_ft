import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../app/common/utils.dart';

@LazySingleton()
class TreatmentApi {
  Future<http.Response> fetchTreatment() async {
    final token = await getToken();
    final user = await getUserData();
    try {
      http.Response res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'),
          // body: {'phone': phone},
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': token
          });
      return res;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

}