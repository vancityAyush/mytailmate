import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/routes/app_pages.dart';
import 'package:mytailmate/app/widgets/widget_helper.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2))
        .then((value) => Get.offNamed(Routes.INTRO));
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            getImage('splash'),
            getImage('branding', width: 283, height: 100),
          ],
        ),
      ),
    );
  }
}
