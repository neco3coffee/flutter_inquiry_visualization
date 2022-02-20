import 'package:flutter_inquiry_visualization/modules/auth/auth_page.dart';
import 'package:flutter_inquiry_visualization/modules/chat/chat_page.dart';
import 'package:flutter_inquiry_visualization/modules/create_account/create_account_page.dart';
import 'package:flutter_inquiry_visualization/modules/edit_account/edit_account_page.dart';
import 'package:flutter_inquiry_visualization/modules/home/home_page.dart';
import 'package:flutter_inquiry_visualization/modules/inquiry/inquiry_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.AUTH;

  static final routes = [
    GetPage(
      name: Routes.AUTH,
      page: () => AuthPage(),
    ),
    GetPage(
      name: Routes.CREATEACCOUNT,
      page: () => CreateAccountPage(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.EDITACCOUNT,
      page: () => EditAccountPage(),
    ),
    GetPage(
      name: Routes.INQUIRY,
      page: () => InquiryPage(),
    ),
    GetPage(
      name: Routes.CHAT,
      page: () => ChatPage(),
    ),
  ];
}
