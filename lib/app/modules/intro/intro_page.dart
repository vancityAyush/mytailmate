import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/intro/intro_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends GetView {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  final IntroController controller = Get.put(IntroController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        child: PageView(
          children: [
            Text('Home'.tr),
            Text('Structure'.tr),
            Text('GetX'.tr),
          ],
        ),
      ),
      bottomSheet: SmoothPageIndicator(
        count: 3,
        controller: IntroController.pageController,
      ),
    );
  }
}
