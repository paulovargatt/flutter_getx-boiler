import 'dart:convert';

import 'package:get_app_flutter/app/dot_env.dart';
import 'package:http/http.dart' as http;

class AuthApiClient {
  final http.Client httpClient = http.Client();

  login(String email, String password) async {
    try {
      var url = apiURL + '/login';
      var response = await http.post(Uri.parse(url), body: {"user": email, "password": password});
      return json.decode(response.body);
    } catch (e) {
      print('erro');
      print(e);
    }
    return null;
  }
}
