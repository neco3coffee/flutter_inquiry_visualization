import 'package:flutter/material.dart';
import 'package:flutter_inquiry_visualization/modules/common/home/home_page.dart';
import 'package:flutter_inquiry_visualization/modules/user/chat/chat_page.dart';
import 'package:flutter_inquiry_visualization/modules/user/inquiry/inquiry_page.dart';
import 'package:get/get.dart';

enum UserNavigator { home, inquiry, chat }

class UserNavigationBar extends StatelessWidget {
  const UserNavigationBar(this.currentNavigator, {Key? key}) : super(key: key);
  final UserNavigator currentNavigator;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentNavigator.index,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'ホーム',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.quiz),
          label: '質問',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'チャット',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Get.offAll(() => const HomePage());
            break;
          case 1:
            Get.offAll(() => const InquiryPage());
            break;
          case 2:
            Get.offAll(() => const ChatPage());
            break;
        }
      },
    );
    ;
  }
}
