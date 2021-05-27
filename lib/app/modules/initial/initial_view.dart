import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app_flutter/app/modules/initial/initial_controller.dart';

class InitialPage extends GetView<InitialController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InitialPage'),
        actions: [
          IconButton(
            icon: Icon(Icons.cake),
            onPressed: () => {controller.click()},
          )
        ],
      ),
      body: Container(
        child: Center(
          child: Obx(
            () => Text("Clicou ${controller.clicked}"),
          ),
        ),
      ),
    );
  }
}
