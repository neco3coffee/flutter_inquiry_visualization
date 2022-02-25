import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_inquiry_visualization/modules/user/inquiry/inquiry_controller.dart';
import 'package:flutter_inquiry_visualization/routes/app_pages.dart';
import 'package:flutter_inquiry_visualization/shared/constants/colors.dart';
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
                  ),
                const Gap(20),
                ElevatedButton(
                  onPressed: () => showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    context: context,
                    builder: (context) => _inquiryInputSheet(context, ctl),
                    isScrollControlled: true,
                  ),
                  child: Text('質問する'),
                ),
              ],
            )),
      ),
      bottomNavigationBar: const UserNavigationBar(UserNavigator.inquiry),
    );
  }

  Widget _inquiryInputSheet(BuildContext context, InquiryController ctl) =>
      Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(20),
            TextField(
              textAlign: TextAlign.center,
              maxLines: 6,
              minLines: 1,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 4,
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: ColorConstants.defaultText, width: 1),
                    borderRadius: BorderRadius.circular(10),
                    gapPadding: 10.0),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: ColorConstants.defaultText, width: 1),
                    borderRadius: BorderRadius.circular(10),
                    gapPadding: 10.0),
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: ColorConstants.defaultText, width: 1),
                    borderRadius: BorderRadius.circular(10),
                    gapPadding: 10.0),
                errorBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: ColorConstants.defaultText, width: 1),
                    borderRadius: BorderRadius.circular(10),
                    gapPadding: 10.0),
              ),
              onChanged: ctl.setContent,
            ),
            const Gap(20),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: ElevatedButton(
                onPressed: () {
                  ctl.createInquiry();
                },
                child: Text('質問を登録する'),
              ),
            )
          ],
        ),
      );
}
