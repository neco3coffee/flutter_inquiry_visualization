import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inquiry_visualization/models/caller.dart';
import 'package:flutter_inquiry_visualization/models/user.dart' as model;
import 'package:flutter_inquiry_visualization/modules/common/home/home_page.dart';
import 'package:flutter_inquiry_visualization/repository/account_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CreateAccountController extends GetxController {
  CreateAccountController();

  final _auth = FirebaseAuth.instance;
  final _accountRepo = AccountRepository();

  final pageController = PageController(
    initialPage: 0,
  );
  final _isUser = false.obs;
  bool get isUser => _isUser.value;

  final _isCaller = false.obs;
  bool get isCaller => _isCaller.value;

  final _name = ''.obs;
  String get name => _name.value;

  @override
  void onInit() async {
    super.onInit();
  }

  void setUser() {
    _isUser.value = true;
    _isCaller.value = false;
  }

  void setCaller() {
    _isCaller.value = true;
    _isUser.value = false;
  }

  void setName(String name) {
    _name.value = name;
  }

  Future<void> createAccount() async {
    if (isUser) {
      final model.User _account = model.User(
        userId: _auth.currentUser!.uid,
        name: _name.value,
      );
      await _accountRepo.createUser(_account);
    } else if (isCaller) {
      final _account = Caller(
        callerId: _auth.currentUser!.uid,
        name: _name.value,
        isOnline: false,
      );
      await _accountRepo.createCaller(_account);
    }
    Get.offAll(const HomePage());
  }
}
