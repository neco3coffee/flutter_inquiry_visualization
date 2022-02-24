import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_inquiry_visualization/models/inquiry.dart';

class AccountRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createInquiry(Inquiry inquiry) async {
    await _firestore.collection('inquiries').doc().set(inquiry.toJson());
  }
}
