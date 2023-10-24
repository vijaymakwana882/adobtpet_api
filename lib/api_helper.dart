import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiHelper {
  ApiHelper._();

  static final ApiHelper apiHelper = ApiHelper._();
  String api = 'https://api.publicapis.org/entries';

  Future  fetchData() async {
    http.Response res = await http.get(Uri.parse(api));
    if (res.statusCode == 200) {
      String fetchedApi = res.body;
      var data = jsonDecode(fetchedApi);
      return data;
    }
  }
}

