import 'package:get/get.dart';
import 'package:get_app_flutter/app/data/models/news_model.dart';
import 'package:get_app_flutter/app/data/provider/news_provider.dart';

class Tab1Controller extends GetxController {
  var listNews = <NewsModel>[].obs;
  final news = Get.find<NewsProvider>();

  @override
  void onInit() {
    loadNews();
    print('call');
    super.onInit();
  }

  loadNews() async {
    var data = await news.getNews(15, 1);
    data.forEach((e) {
      listNews.add(NewsModel.fromJson(e));
    });
  }
}


