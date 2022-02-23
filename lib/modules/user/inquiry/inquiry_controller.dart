import 'package:flutter_inquiry_visualization/models/caller.dart';
import 'package:flutter_inquiry_visualization/repository/account_repository.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class InquiryController extends GetxController {
  final _accountRepo = AccountRepository();

  final _callers = Rxn<List<Caller>>(null);
  List<Caller>? get callers => _callers.value;

  @override
  void onInit() {
    _callers.bindStream(_accountRepo.getCallerStream());
    super.onInit();
  }
}
