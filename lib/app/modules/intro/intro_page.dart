import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/intro/intro_controller.dart';
import 'package:mytailmate/app/modules/intro/widgets/gradient_button.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_colors.dart';
import 'package:mytailmate/app/widgets/widget_helper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../routes/app_pages.dart';
import '../../theme/app_text_theme.dart';

class IntroPage extends GetView {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  final IntroController controller = Get.put(IntroController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Column(
        children: [
          heightSpace10,
          Expanded(
            child: PageView(
              physics: BouncingScrollPhysics(),
              controller: controller.pageController,
              children: [
                buildPage(
                  title: 'Access verified pet service providers near you',
                  image: 'intro1',
                  color1: Color(0xFFFCDC64),
                  color2: Color(0xFFFFFEB7),
                ),
                buildPage(
                  title: 'Access verified pet service providers near you',
                  image: 'intro2',
                  color1: Color(0xFF17E7E7),
                  color2: Color(0xFFDAFAFC),
                ),
                buildPage(
                  title: 'Access verified pet service providers near you',
                  image: 'intro3',
                  color1: Color(0xFF5CB27B),
                  color2: Color(0xFFD7FFE5),
                ),
                buildPage(
                  title: 'Access verified pet service providers near you',
                  image: 'intro4',
                  color1: Color(0xFF4F6282),
                  color2: Color(0xFFC8D3E5),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SmoothPageIndicator(
              count: 4,
              controller: controller.pageController,
              effect: WormEffect(
                activeDotColor: primaryColor,
                dotColor: secondaryColor,
                dotHeight: 8,
                dotWidth: 8,
              ),
            ),
          ),
          heightSpace10,
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GradientButton(
              title: "Login with OTP",
              onPressed: () {
                Get.offNamed(Routes.LOGIN);
              },
            ),
          ),
          heightSpace20,
          const Text(
            'Or connect via',
            style: textInfo,
          ),
          heightSpace20,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: getImage('fb', height: 44, width: 44),
              ),
              widthSpace20,
              GestureDetector(
                onTap: () {},
                child: getImage('google', height: 44, width: 44),
              ),
            ],
          ),
          heightSpace20,
        ],
      ),
    );
  }

  Widget buildPage(
      {required String title,
      required String image,
      required Color color1,
      required Color color2}) {
    final double size = 40;
    return Column(
      children: [
        heightSpace20,
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(12.0),
            margin: const EdgeInsets.only(top: 12.0),
            child: getImage(image, width: double.infinity),
          ),
        ),
        Stack(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: size),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
              width: double.infinity,
              decoration: BoxDecoration(
                color: color2,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(84),
                  topRight: Radius.circular(84),
                ),
              ),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: bannerStyle.copyWith(color: color1),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                radius: size,
                backgroundColor: color1,
                child: Image.asset(
                  'assets/images/paw.png',
                  height: size * 2 - 20,
                  width: size * 2 - 20,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
