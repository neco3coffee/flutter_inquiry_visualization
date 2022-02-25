import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutter_inquiry_visualization/models/caller.dart';
import 'package:flutter_inquiry_visualization/models/inquiry.dart';
import 'package:flutter_inquiry_visualization/models/user.dart';
import 'package:flutter_inquiry_visualization/repository/account_repository.dart';
import 'package:flutter_inquiry_visualization/repository/inquiry_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class InquiryController extends GetxController {
  final _accountRepo = AccountRepository();
  final _inquiryRepo = InquiryRepository();
  final _auth = firebase.FirebaseAuth.instance;

  final _callers = Rxn<List<Caller>>(null);
  List<Caller>? get callers => _callers.value;

  final _user = Rxn<User>(null);
  User? get user => _user.value;

  final _inquiries = Rxn<List<Inquiry>>(null);
  List<Inquiry>? get inquiries => _inquiries.value;

  final _content = ''.obs;
  String get content => _content.value;

  @override
  void onInit() async {
    _callers.bindStream(_accountRepo.getCallerStream());
    _inquiries.bindStream(_inquiryRepo.getWaitInquiryStream());
    _user.value = await _accountRepo.getUser(_auth.currentUser!.uid);
    super.onInit();
  }

  void setContent(String content) {
    _content.value = content;
  }

  Future<void> createInquiry() async {
    final Inquiry _inquiry = Inquiry(
      inquiryId: '',
      user: _user.value!,
      callerId: null,
      content: _content.value,
      isUserTyping: false,
      isCallerTyping: false,
      status: InquiryStatus.wait,
      answer: null,
      createdAt: DateTime.now(),
      startedAt: null,
      finishedAt: null,
    );
    await _inquiryRepo.createInquiry(_inquiry);
    _content.value = '';
    Get.back();
  }
}
