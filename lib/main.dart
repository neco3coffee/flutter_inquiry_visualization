import 'package:flutter/material.dart';
import 'package:flutter_inquiry_visualization/routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.AUTH,
      defaultTransition: Transition.fade,
      getPages: AppPages.routes,
      title: 'Flutter GetX Boilerplate',
      // theme: ThemeConfig.lightTheme,
    );
  }
}
