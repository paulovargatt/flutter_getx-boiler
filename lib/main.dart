import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app_flutter/app/routes/app_pages.dart';
import 'package:get_app_flutter/app/routes/app_routes.dart';
import 'package:get_app_flutter/app/theme/app_theme.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'App_Name',
    debugShowCheckedModeBanner: false,
    theme: appThemeData,
    initialRoute: Routes.INITIAL,
    getPages: AppPages.routes,
//    initialBinding: ,
  ));
}
