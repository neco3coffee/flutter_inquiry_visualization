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
        padding: const EdgeInsets.all(26),
        child: Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: PageView(
                  controller: ctl.pageController,
                  children: [
                    _inputAccountType(ctl),
                    _inputName(ctl),
                    _createAccount(ctl),
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: ctl.pageController, // PageController
                count: 3,
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
            color: ctl.isCaller
                ? ColorConstants.secondaryAppColor
                : ColorConstants.lightScaffoldBackgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
              onTap: () async {
                ctl.setCaller();
                await Future.delayed(const Duration(seconds: 1));
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
            color: ctl.isUser
                ? ColorConstants.secondaryAppColor
                : ColorConstants.lightScaffoldBackgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
              onTap: () async {
                ctl.setUser();
                await Future.delayed(const Duration(seconds: 1));
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
              ),
            ),
          ),
          textAlign: TextAlign.center,
          onChanged: ctl.setName,
          onEditingComplete: () async => {
            FocusManager.instance.primaryFocus?.unfocus(),
            await Future.delayed(const Duration(seconds: 1)),
            ctl.pageController.nextPage(
              duration: const Duration(milliseconds: 800),
              curve: Curves.ease,
            )
          },
        ),
      ),
    ],
  );
}

Widget _createAccount(CreateAccountController ctl) {
  return Column(
    children: [
      const Gap(20),
      const SizedBox(
        width: double.infinity,
        child: Text(
          '以下の内容でアカウント作成します',
          textAlign: TextAlign.center,
        ),
      ),
      const Gap(20),
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: () async {
            ctl.setCaller();
            await Future.delayed(const Duration(seconds: 1));
            ctl.pageController.nextPage(
                duration: const Duration(milliseconds: 800),
                curve: Curves.ease);
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                if (ctl.isUser || ctl.isCaller)
                  CircleAvatar(
                    child: ctl.isUser
                        ? Assets.images.vector.image()
                        : Assets.images.support5.image(),
                    backgroundColor: Colors.transparent,
                    radius: 50,
                  ),
                Text(ctl.name),
              ],
            ),
          ),
        ),
      ),
      const Gap(20),
      if (ctl.isCaller && ctl.name != '' || ctl.isUser && ctl.name != '')
        ElevatedButton(
            onPressed: () => ctl.createAccount(), child: const Text('作成する'))
    ],
  );
}
