import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app_flutter/app/data/provider/news_provider.dart';
import 'package:get_app_flutter/app/modules/tabs/tab1/tab1_controller.dart';

class Tab1Page extends GetView<Tab1Controller> {
  final news = Get.find<NewsProvider>();
  final constroller = Get.find<Tab1Controller>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Obx(
          () => ListView.builder(
            itemCount: controller.listNews.length,
            itemBuilder: (context, index) {
              final item = controller.listNews[index];
              return ListTile(
                onTap: () {
                  //Get.getDelegate()?.toNamed(Routes.PRODUCT_DETAILS(item.id));
                },
                title: Text("${item.title}"),
                subtitle: Text('asd'),
              );
            },
          ),
        ),
      ),
    );
  }
}
