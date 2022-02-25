import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_inquiry_visualization/models/inquiry.dart';

class InquiryRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createInquiry(Inquiry inquiry) async {
    final document = _firestore.collection('inquiries').doc();
    inquiry.inquiryId = document.id;
    _firestore.runTransaction(
        (transaction) async => transaction.set(document, inquiry.toJson()));
    // await _firestore.collection('inquiries').doc().set(inquiry.toJson());
  }
}
