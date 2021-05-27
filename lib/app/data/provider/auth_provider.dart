import 'dart:convert';

import 'package:get_app_flutter/app/dot_env.dart';
import 'package:http/http.dart' as http;

class AuthApiClient {
  final http.Client httpClient = http.Client();

  login(String username, String password) async {
    try{
      var response = await http
          .post(baseUrl, body: {"username": null, "password": null});

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        print('erro');
      }
    } catch (e) {
      print('erro');
    }
    return null;
  }
}
