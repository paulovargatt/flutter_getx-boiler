import 'package:get/get.dart';

class InitialController extends GetxController {
  RxInt clicked = 0.obs;

  click() {
    clicked++;
  }
}
