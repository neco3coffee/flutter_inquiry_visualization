import 'package:flutter/material.dart';
import 'package:flutter_inquiry_visualization/modules/create_account/create_account_controller.dart';
import 'package:flutter_inquiry_visualization/shared/constants/colors.dart';
import 'package:flutter_inquiry_visualization/shared/constants/gen/assets.gen.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctl = Get.put(
      CreateAccountController(),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('アカウント作成'),
      ),
      body: Padding(
        padding: EdgeInsets.all(26),
        child: Form(
          key: ctl.formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: PageView(
                  controller: ctl.pageController,
                  children: [
                    _inputAccountType(ctl),
                    _inputName(ctl),
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: ctl.pageController, // PageController
                count: 2,
                effect: const WormEffect(), // your preferred effect
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _inputAccountType(CreateAccountController ctl) {
  return Column(
    children: [
      const Gap(20),
      const SizedBox(
        width: double.infinity,
        child: Text(
          'アカウントのタイプを選択してください',
          textAlign: TextAlign.center,
        ),
      ),
      const Gap(20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
              onTap: () {
                ctl.pageController.nextPage(
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.ease);
              },
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    CircleAvatar(
                      child: Assets.images.support5.image(),
                      backgroundColor: Colors.transparent,
                      radius: 50,
                    ),
                    Text('応対者'),
                  ],
                ),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
              onTap: () {
                ctl.pageController.nextPage(
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.ease);
              },
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    CircleAvatar(
                      child: Assets.images.vector.image(),
                      backgroundColor: Colors.transparent,
                      radius: 50,
                    ),
                    Text('質問者'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _inputName(CreateAccountController ctl) {
  return Column(
    children: [
      const Gap(20),
      const SizedBox(
        width: double.infinity,
        child: Text(
          'お名前を入力してください',
          textAlign: TextAlign.center,
        ),
      ),
      const Gap(30),
      Padding(
        padding: const EdgeInsets.fromLTRB(50, 3, 50, 3),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  color: ColorConstants.defaultText,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  color: ColorConstants.defaultText,
                )),
          ),
        ),
      ),
    ],
  );
}

// body: SafeArea(
//         child: Container(
//           child: Center(
//             child: Column(
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     Get.toNamed('/auth');
//                   },
//                   child: Text('/auth'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Get.toNamed('/create_account');
//                   },
//                   child: Text('/create_account'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Get.toNamed('/home');
//                   },
//                   child: Text('/home'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Get.toNamed('/edit_account');
//                   },
//                   child: Text('/edit_account'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Get.toNamed('/inquiry');
//                   },
//                   child: Text('/inquiry'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Get.toNamed('/chat');
//                   },
//                   child: Text('/chat'),
//                 ),
//                 Text('create_account'),
//               ],
//             ),
//           ),
//         ),
//       ),
