import 'package:flutter_inquiry_visualization/modules/common/auth/auth_page.dart';
import 'package:flutter_inquiry_visualization/modules/common/create_account/create_account_page.dart';
import 'package:flutter_inquiry_visualization/modules/common/home/home_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: CommonRoutes.AUTH,
      page: () => AuthPage(),
    ),
    GetPage(
      name: CommonRoutes.CREATEACCOUNT,
      page: () => CreateAccountPage(),
    ),
    GetPage(
      name: CommonRoutes.HOME,
      page: () => HomePage(),
    ),
  ];
}
