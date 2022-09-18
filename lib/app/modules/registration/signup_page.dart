import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/registration/pages/pet_birthdate_page.dart';
import 'package:mytailmate/app/modules/registration/pages/pet_breed_page.dart';
import 'package:mytailmate/app/modules/registration/pages/pet_gender_page.dart';
import 'package:mytailmate/app/modules/registration/pages/pet_name_page.dart';
import 'package:mytailmate/app/modules/registration/pages/pet_next_page.dart';
import 'package:mytailmate/app/modules/registration/signup_controller.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../theme/app_colors.dart';

class SignUpPage extends GetView<SignUpController> {
  SignUpPage({Key? key}) : super(key: key);

  @override
  final SignUpController controller = Get.put(
    SignUpController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlueColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: darkBlueColor,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back), onPressed: () => Get.back()),
        actions: [
          TextButton(
            onPressed: () {
              controller.pageController.animateToPage(4,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut);
            },
            child: const Text(
              'Skip',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          heightSpace50,
          Expanded(
            child: PageView(
              controller: controller.pageController,
              physics: const BouncingScrollPhysics(),
              children: const [
                PetNamePage(),
                PetBreedPage(),
                PetGenderPage(),
                PetBirthDatePage(),
                PetNextPage(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SmoothPageIndicator(
              count: 5,
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
