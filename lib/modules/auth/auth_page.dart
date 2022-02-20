import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inquiry_visualization/modules/home/home_page.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:get/get.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomePage();
        } else {
          return SignInScreen(providerConfigs: [
            EmailProviderConfiguration(),
          ]);
        }
      },
    );
    // return Scaffold(
    //   body: SafeArea(
    //     child: Container(
    //       child: Center(
    //         child: Column(
    //           children: [
    //             ElevatedButton(
    //               onPressed: () {
    //                 Get.toNamed('/auth');
    //               },
    //               child: Text('/auth'),
    //             ),
    //             ElevatedButton(
    //               onPressed: () {
    //                 Get.toNamed('/create_account');
    //               },
    //               child: Text('/create_account'),
    //             ),
    //             ElevatedButton(
    //               onPressed: () {
    //                 Get.toNamed('/home');
    //               },
    //               child: Text('/home'),
    //             ),
    //             ElevatedButton(
    //               onPressed: () {
    //                 Get.toNamed('/edit_account');
    //               },
    //               child: Text('/edit_account'),
    //             ),
    //             ElevatedButton(
    //               onPressed: () {
    //                 Get.toNamed('/inquiry');
    //               },
    //               child: Text('/inquiry'),
    //             ),
    //             ElevatedButton(
    //               onPressed: () {
    //                 Get.toNamed('/chat');
    //               },
    //               child: Text('/chat'),
    //             ),
    //             Text('auth'),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
