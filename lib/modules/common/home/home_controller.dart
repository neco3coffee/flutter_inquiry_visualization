import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_inquiry_visualization/models/caller.dart';
import 'package:flutter_inquiry_visualization/models/user.dart';
import 'package:flutter_inquiry_visualization/modules/common/create_account/create_account_page.dart';
import 'package:flutter_inquiry_visualization/repository/account_repository.dart';
import 'package:flutter_inquiry_visualization/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  final _auth = auth.FirebaseAuth.instance;
  final _accountRepo = AccountRepository();

  final _user = Rxn<User>(null);
  User? get user => _user.value;

  final _caller = Rxn<Caller>(null);
  Caller? get caller => _caller.value;

  @override
  void onInit() async {
    _user.value = await _accountRepo.getUser(_auth.currentUser!.uid);
    _caller.value = await _accountRepo.getCaller(_auth.currentUser!.uid);

    if (user == null && caller == null) {
      Get.offAll(() => const CreateAccountPage());
    }
    super.onInit();
  }
}
