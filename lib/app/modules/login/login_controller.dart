import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_app_flutter/app/data/models/auth_model.dart';
import 'package:get_app_flutter/app/data/provider/auth_provider.dart';

class LoginController extends GetxController {
  final AuthApiClient api = AuthApiClient();


  //late Auth auth;

  final formKey = GlobalKey<FormState>();

  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();

  RxBool showPass = false.obs;

  login() async {
    if (formKey.currentState!.validate()) {
      final res = await api.login(emailInput.text, passwordInput.text);
      print(res);
    }
  }
}
