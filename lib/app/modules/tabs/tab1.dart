import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app_flutter/app/data/provider/news_provider.dart';
import 'package:get_app_flutter/app/global/widgets/state_fullwrapper.dart';
import 'package:get_app_flutter/app/modules/tabs/tabs_controller.dart';

class Tab1 extends StatelessWidget {
  final controller = Get.find<TabsController>();
  final news = Get.find<NewsProvider>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
    
      child: Container(
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
      )),
    );
  }
}
