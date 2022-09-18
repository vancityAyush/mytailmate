import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/profile/profile_controller.dart';
import 'package:mytailmate/app/modules/profile/widgets/profile_progress.dart';
import 'package:mytailmate/app/modules/registration/widgets/rounded_box.dart';
import 'package:mytailmate/app/modules/registration/widgets/rounded_container.dart';
import 'package:mytailmate/app/routes/app_pages.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';
import 'package:mytailmate/app/widgets/widget_helper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../theme/app_colors.dart';

class ProfileDetailsPage extends GetView<ProfileController> {
  ProfileDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Get.back()),
      ),
      body: Column(
        children: [
          ProfileProgressIndicator(controller: controller),
          heightSpace5,
          Obx(
            () => Text(
              "Profile Completed ${controller.percentProfileCompleted}%",
              style: muilsh600.copyWith(
                color: primaryColor,
                fontSize: 16,
              ),
            ),
          ),
          heightSpace10,
          Container(
            width: Get.width,
            decoration: const BoxDecoration(
              color: primaryColor,
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "Lifestyle Records",
              style: muilsh600.copyWith(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
          heightSpace50,
          Expanded(
            child: PageView(
              controller: controller.pageController,
              physics: const BouncingScrollPhysics(),
              children: [
                buildQuestion(
                  "Question 1",
                  subtitle: "How many meals do you feed your pet in a day?",
                ),
                buildQuestion(
                  "Question 2",
                  subtitle: "What does your pet eat?",
                ),
                buildQuestion(
                  "Question 3",
                ),
                buildQuestion(
                  "Question 4",
                  subtitle: "Ready-to-eat freshly cooked food.",
                ),
                buildLastPage(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SmoothPageIndicator(
              count: 4,
              controller: controller.pageController,
              effect: const WormEffect(
                activeDotColor: primaryColor,
                dotColor: secondaryColor,
                dotHeight: 8,
                dotWidth: 8,
              ),
            ),
          ),
          heightSpace50,
        ],
      ),
    );
  }
}

Widget buildLastPage() {
  return RoundedContainer(
    color: primaryColor,
    margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    children: [
      const Spacer(),
      Icon(
        Icons.check_circle_outline,
        color: Colors.white,
        size: 100,
      ),
      Spacer(),
      Text(
        'Your Profile Has Been Completed',
        style: titleStyle.copyWith(
          color: Colors.white,
        ),
      ),
      heightSpace50,
      heightSpace50,
      RoundedBox(
        child: ListTile(
          minLeadingWidth: 0,
          leading: getImage(
            'pet_add',
            height: 28,
            width: 28,
          ),
          onTap: () {
            // controller.pageController.jumpToPage(0);
          },
          title: const Text(
            'Add New Pet  ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      heightSpace50,
      RoundedBox(
        child: ListTile(
          leading: getImage(
            'home',
            height: 28,
            width: 28,
          ),
          onTap: () {
            Get.offNamed(Routes.HOME);
          },
          title: const Text(
            'Go to Home   ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      Spacer(),
    ],
  );
}

Widget buildQuestion(String title, {String? subtitle}) {
  return RoundedContainer(
    showBorder: true,
    color: const Color(0xffF5FAFD),
    margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    children: [
      heightSpace20,
      Text(title, style: titleStyle.copyWith(fontSize: 20)),
      heightSpace20,
      if (subtitle != null)
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: titleStyle.copyWith(
            color: primaryColor,
            fontSize: 24,
          ),
        ),
      heightSpace50,
      Spacer(),
    ],
  );
}
