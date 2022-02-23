import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inquiry_visualization/modules/common/home/home_page.dart';
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
  }
}
