import 'package:get/get.dart';
import 'package:get_app_flutter/app/modules/initial/initial_binding.dart';
import 'package:get_app_flutter/app/modules/initial/initial_view.dart';
import 'package:get_app_flutter/app/routes/app_routes.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => InitialPage(), //InitialView(),
      binding: InitialBinding(), //InitialBinding(),
    )
  ];
}
