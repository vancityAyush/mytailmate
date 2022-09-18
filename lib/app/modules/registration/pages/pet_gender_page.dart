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

class PetGenderPage extends GetView<SignUpController> {
  const PetGenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      children: [
        const Spacer(),
        const Text('Cool ! Does pet’s have a breed?', style: titleStyle),
        heightSpace50,
        RoundedBox(
          child: Padding(
            padding: const EdgeInsets.only(left: 120.0, right: 24),
            child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
              isExpanded: true,
              iconEnabledColor: hintColor,
              onChanged: (value) {},
              hint: const Text(
                'Select Gender',
                style: TextStyle(
                  color: hintColor,
                ),
              ),
              value: 'M',
              items: [
                DropdownMenuItem(
                  value: 'M',
                  child: Text(
                    'Male',
                    style: buttonStyle.copyWith(color: hintColor),
                  ),
                ),
                DropdownMenuItem(
                  value: 'F',
                  child: Text(
                    'Female',
                    style: buttonStyle.copyWith(color: hintColor),
                  ),
                ),
              ],
            )),
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
