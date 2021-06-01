import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app_flutter/app/data/models/news_model.dart';
import 'package:get_app_flutter/app/data/provider/news_provider.dart';
import 'package:get_app_flutter/app/global/widgets/tab_navigation.dart';
import 'package:get_app_flutter/app/routes/app_routes.dart';
import 'package:get_storage/get_storage.dart';

class TabsController extends GetxController {
  final storage = GetStorage();

  Color backgroundColorNav = Colors.white;
  RxInt selectedIndex = 0.obs;

  static const homeIndex = 0;
  static const searchIndex = 1;
  static const userIndex = 2;

  var initializedTabOne = false;
  var initializedTabTwo = false;

  final news = Get.find<NewsProvider>();

  var listNews = <NewsModel>[].obs;

  List<NavigationItem> items = [
    NavigationItem(Icon(Icons.home), Text('Home'), Get.theme.primaryColor),
    // NavigationItem(Icon(Icons.favorite_border), Text('Favorite'), Get.theme.primaryColor),
    NavigationItem(Icon(Icons.search), Text('Search'), Get.theme.primaryColor),
    NavigationItem(
        Icon(Icons.person_outline), Text('Profile'), Get.theme.primaryColor)
  ];

  exitApp() {
    storage.erase();
    Get.offAllNamed(Routes.LOGIN);
  }

  @override
  void onInit() {
    loadNews();
    super.onInit();
  }

  loadNews() async {
    print('pau aki');

    var data = await news.getNews(15, 1);
    data.forEach((e) {
      listNews.add(NewsModel.fromJson(e));
    });

  
    print(listNews);
  }

  resolveText() {
    switch (selectedIndex.value) {
      case homeIndex:
        return 'Início';
      case searchIndex:
        return 'Pesquisa';
      case userIndex:
        return 'Usuário';
    }
  }

  initTabOne() {
    if (!initializedTabOne) {
      print('GET DATA IN API ONE');
    }

    initializedTabOne = true;
    print('tab one init');
  }

  initTabTwo() {
    if (!initializedTabTwo) {
      print('GET DATA IN API TWO');
    }

    initializedTabTwo = true;
  }

  choiceIndex(i) {
    selectedIndex.value = i;
  }
}
