import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app_flutter/app/modules/login/login_controller.dart';

class LoginPage extends GetView<LoginController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('LoginPage')),

    body: SafeArea(
      child: Text('LoginController'))
    );
  }
}