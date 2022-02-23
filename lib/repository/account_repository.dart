import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_inquiry_visualization/models/caller.dart';
import 'package:flutter_inquiry_visualization/models/user.dart';

class AccountRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createUser(User account) async {
    await _firestore
        .collection('users')
        .doc(account.userId)
        .set(account.toJson());
  }

  Future<void> createCaller(Caller account) async {
    await _firestore
        .collection('callers')
        .doc(account.callerId)
        .set(account.toJson());
  }
}
