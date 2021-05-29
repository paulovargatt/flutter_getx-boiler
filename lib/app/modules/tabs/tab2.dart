import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_app_flutter/app/global/widgets/state_fullwrapper.dart';
import 'package:get_app_flutter/app/modules/tabs/tabs_controller.dart';

class Tab2 extends StatelessWidget {
  @override
  final controller = Get.find<TabsController>();

  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {
        controller.initTabTwo();
      },
      child: Container(),
    );
  }
}
