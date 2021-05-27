import 'package:get/get.dart';
import 'package:get_app_flutter/app/modules/login/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
