import 'package:flutter/material.dart';
import 'package:flutter_inquiry_visualization/modules/common/home/home_page.dart';
import 'package:flutter_inquiry_visualization/modules/caller/chat/chat_page.dart';
import 'package:flutter_inquiry_visualization/modules/caller/inquiry/inquiry_page.dart';
import 'package:get/get.dart';

enum CallerNavigator { home, inquiry, chat }

class CallerNavigationBar extends StatelessWidget {
  const CallerNavigationBar(this.currentNavigator, {Key? key})
      : super(key: key);
  final CallerNavigator currentNavigator;

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
