import 'dart:convert';

import 'package:http/http.dart' as http;

class GetMembers {
  final baseURL = "naazim7.github.io";

  Future getMembers() async {
    var response = await http
        .get(Uri.parse('https://naazim7.github.io/dummydata/data.json'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else
      throw Exception("Failed To load Data");
  }
}
