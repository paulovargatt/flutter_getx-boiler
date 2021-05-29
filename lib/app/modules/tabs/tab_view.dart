import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app_flutter/app/global/widgets/tab_navigation.dart';
import 'package:get_app_flutter/app/modules/tabs/tab1.dart';
import 'package:get_app_flutter/app/modules/tabs/tab2.dart';
import 'package:get_app_flutter/app/modules/tabs/tab3.dart';
import 'package:get_app_flutter/app/modules/tabs/tabs_controller.dart';

class TabPage extends GetView<TabsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(double.infinity, kToolbarHeight),
          child: Obx(
            () => AppBar(
                backgroundColor: Get.theme.primaryColor,
                actions: [],
                title: Text(controller.resolveText())),
          )),
      body: Column(
        children: [
          Obx(
            () => Visibility(
                visible: controller.selectedIndex.value == 0, child: Tab1()),
          ),
          Obx(
            () => Visibility(
                visible: controller.selectedIndex.value == 1, child: Tab2()),
          ),
          Obx(
            () => Visibility(
                visible: controller.selectedIndex.value == 2, child: Tab3()),
          ),
        ],
      ),
      bottomNavigationBar: TabNavigation(),
    );
  }
}
