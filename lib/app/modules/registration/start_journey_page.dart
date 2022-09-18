import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/routes/app_pages.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';
import 'package:mytailmate/app/widgets/widget_helper.dart';

class StartJourneyPage extends GetView {
  const StartJourneyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1))
        .then((value) => Get.offNamed(Routes.PETSELECTION));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Let Us Start Our Journey',
              style: headerTextStyle,
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
            heightSpace30,
            getImageGif('dog_running'),
          ],
        ),
      ),
    );
  }
}
