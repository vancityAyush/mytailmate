/**
 * Created by : Ayush Kumar
 * Created on : 31-08-2022
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/registration/widgets/next_button.dart';

import '../../../theme/app_base_style.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_text_theme.dart';
import '../../../widgets/widget_helper.dart';
import '../signup_controller.dart';
import '../widgets/rounded_box.dart';
import '../widgets/rounded_container.dart';

class PetBreedPage extends GetView<SignUpController> {
  const PetBreedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      children: [
        const Spacer(),
        const Text('Cool ! Does pet’s have a breed?', style: titleStyle),
        heightSpace50,
        const RoundedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                  color: hintColor,
                ),
                iconColor: hintColor,
                hintText: 'Select Breed',
                hintStyle: TextStyle(
                  color: hintColor,
                  fontSize: 16,
                ),
                border: InputBorder.none,
              ),
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
        Flexible(child: getImageGif('pet2')),
        heightSpace50,
        NextButton(controller: controller),
        heightSpace50,
      ],
    );
  }
}
