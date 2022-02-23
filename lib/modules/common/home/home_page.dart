import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inquiry_visualization/modules/common/auth/auth_page.dart';
import 'package:flutter_inquiry_visualization/modules/common/home/home_controller.dart';
import 'package:flutter_inquiry_visualization/shared/constants/gen/assets.gen.dart';
import 'package:flutter_inquiry_visualization/shared/widgets/caller_bottom_navigation.dart';
import 'package:flutter_inquiry_visualization/shared/widgets/user_bottom_navigation.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctl = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
        actions: [
          IconButton(
              onPressed: () => {
                    FirebaseAuth.instance.signOut(),
                    Get.offAll(() => const AuthPage())
                  },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(26),
        child: Obx(() => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    'アカウント情報',
                    textAlign: TextAlign.center,
                  ),
                ),
                const Gap(20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        if (ctl.caller != null)
                          CircleAvatar(
                            child: Assets.images.support5.image(),
                            backgroundColor: Colors.transparent,
                            radius: 50,
                          ),
                        if (ctl.caller != null) Text(ctl.caller!.name),
                        if (ctl.user != null)
                          CircleAvatar(
                            child: Assets.images.vector.image(),
                            backgroundColor: Colors.transparent,
                            radius: 50,
                          ),
                        if (ctl.user != null) Text(ctl.user!.name)
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
      bottomNavigationBar: Obx(
        () => ctl.user != null
            ? const UserNavigationBar(UserNavigator.home)
            : const CallerNavigationBar(CallerNavigator.home),
      ),
    );
  }
}
