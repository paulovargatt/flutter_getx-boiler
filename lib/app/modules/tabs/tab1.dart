import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app_flutter/app/global/widgets/state_fullwrapper.dart';
import 'package:get_app_flutter/app/modules/tabs/tabs_controller.dart';

final controller = Get.find<TabsController>();


class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {
        controller.initTabOne();
      },
      child: Container(),
    );
  }
}

