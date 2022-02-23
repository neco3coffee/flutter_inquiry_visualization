import 'package:flutter/material.dart';
import 'package:flutter_inquiry_visualization/routes/app_pages.dart';
import 'package:flutter_inquiry_visualization/shared/widgets/user_bottom_navigation.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(UserRoutes.CHAT),
      ),
      body: Padding(padding: const EdgeInsets.all(26)),
      bottomNavigationBar: const UserNavigationBar(UserNavigator.chat),
    );
  }
}
