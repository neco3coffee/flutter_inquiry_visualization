import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
        actions: [
          IconButton(
              onPressed: () => FirebaseAuth.instance.signOut(),
              icon: Icon(Icons.logout))
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/auth');
                  },
                  child: Text('/auth'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/create_account');
                  },
                  child: Text('/create_account'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/home');
                  },
                  child: Text('/home'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/edit_account');
                  },
                  child: Text('/edit_account'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/inquiry');
                  },
                  child: Text('/inquiry'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/chat');
                  },
                  child: Text('/chat'),
                ),
                Text('home'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
