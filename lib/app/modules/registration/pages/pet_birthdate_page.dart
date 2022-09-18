/**
 * Created by : Ayush Kumar
 * Created on : 31-08-2022
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/registration/widgets/next_button.dart';

import '../../../theme/app_base_style.dart';
import '../../../theme/app_text_theme.dart';
import '../signup_controller.dart';
import '../widgets/rounded_container.dart';

class PetBirthDatePage extends GetView<SignUpController> {
  const PetBirthDatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      children: [
        const Spacer(),
        const Text('When was pet’s born?', style: titleStyle),
        heightSpace50,
        heightSpace50,
        Expanded(
          child: CupertinoDatePicker(
            onDateTimeChanged: (date) {},
            initialDateTime: DateTime.now(),
            minimumDate: DateTime(1900),
            maximumDate: DateTime(2050),
            mode: CupertinoDatePickerMode.date,
            backgroundColor: Colors.white,
            use24hFormat: true,
            minuteInterval: 1,
          ),
        ),
        heightSpace50,
        heightSpace50,
        NextButton(controller: controller),
        heightSpace50,
      ],
    );
  }
}
