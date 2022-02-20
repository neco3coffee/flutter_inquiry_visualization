import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InquiryPage extends StatelessWidget {
  const InquiryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Center(
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
                    Text('inquiry'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
