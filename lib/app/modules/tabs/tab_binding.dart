import 'package:get/get.dart';
import 'package:get_app_flutter/app/modules/tabs/tabs_controller.dart';


class TabBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabsController>(() => TabsController());
  }
}
