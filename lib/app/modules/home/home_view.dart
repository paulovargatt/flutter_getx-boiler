import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app_flutter/app/modules/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      child: TextButton(
        child: Text('CU'),
        onPressed: () => controller.exitApp(),
      ),
    ));
  }
}
