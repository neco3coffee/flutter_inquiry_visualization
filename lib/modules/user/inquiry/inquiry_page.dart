import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_inquiry_visualization/modules/user/inquiry/inquiry_controller.dart';
import 'package:flutter_inquiry_visualization/routes/app_pages.dart';
import 'package:flutter_inquiry_visualization/shared/constants/gen/assets.gen.dart';
import 'package:flutter_inquiry_visualization/shared/widgets/user_bottom_navigation.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class InquiryPage extends StatelessWidget {
  const InquiryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctl = Get.put(InquiryController());
    return Scaffold(
      appBar: AppBar(
        title: Text(UserRoutes.INQUIRY),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26),
        child: Obx(() => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Gap(20),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    '只今の応対者数: ${ctl.callers != null ? ctl.callers!.length : 0}人',
                    textAlign: TextAlign.center,
                  ),
                ),
                if (ctl.callers != null)
                  Expanded(
                    child: ListView.builder(
                      itemCount: ctl.callers!.length, // この行を追加
                      itemBuilder: (BuildContext context, int index) {
                        return CircleAvatar(
                          child: Assets.images.support5.image(),
                          backgroundColor: Colors.transparent,
                          radius: 30,
                        );
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  )
              ],
            )),
      ),
      bottomNavigationBar: const UserNavigationBar(UserNavigator.inquiry),
    );
  }
}
