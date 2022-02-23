import 'package:flutter/material.dart';
import 'package:flutter_inquiry_visualization/routes/app_pages.dart';
import 'package:flutter_inquiry_visualization/shared/widgets/caller_bottom_navigation.dart';

class InquiryPage extends StatelessWidget {
  const InquiryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(CallerRoutes.INQUIRY),
      ),
      body: Padding(padding: const EdgeInsets.all(26)),
      bottomNavigationBar: const CallerNavigationBar(CallerNavigator.inquiry),
    );
  }
}
