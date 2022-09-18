import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/registration/widgets/next_button.dart';
import 'package:mytailmate/app/modules/registration/widgets/pet_checkbox.dart';
import 'package:mytailmate/app/routes/app_pages.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_colors.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';
import 'package:mytailmate/app/widgets/widget_helper.dart';

class PetSelectionPage extends GetView {
  const PetSelectionPage({Key? key}) : super(key: key);
  static const List<String> petList = [
    'Dog',
    'Cat',
    'Others',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            heightSpace20,
            Flexible(
              child: getImageGif('white_dog'),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 12.0,
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 2.0, // soften the shadow
                      spreadRadius: 0.0, //extend the shadow
                    )
                  ],
                  color: lightBlue,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Tell us about your pet',
                      style: headerTextStyle,
                    ),
                    ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        for (final pet in petList)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: PetCheckBox(
                              title: pet,
                            ),
                          ),
                      ],
                    ),
                    Spacer(),
                    NextButton.onTap(
                      onTap: () {
                        Get.toNamed(Routes.SIGNUP);
                      },
                    ),
                    heightSpace5,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
