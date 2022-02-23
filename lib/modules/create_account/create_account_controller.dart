import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CreateAccountController extends GetxController {
  CreateAccountController();

  final formKey = GlobalKey<FormState>();
  final pageController = PageController(
    initialPage: 0,
  );

  @override
  void onInit() async {
    super.onInit();
  }
}
