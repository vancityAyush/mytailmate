/**
 * Created by : Ayush Kumar
 * Created on : 31-08-2022
 */
import 'package:flutter/material.dart';
import 'package:mytailmate/app/modules/registration/widgets/rounded_box.dart';

import '../../../theme/app_text_theme.dart';
import '../signup_controller.dart';

class NextButton extends StatelessWidget {
  NextButton({
    Key? key,
    required this.controller,
  }) : super(key: key);

  NextButton.onTap({required this.onTap});

  SignUpController? controller;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: MaterialButton(
        onPressed: onTap ??
            () {
              controller!.pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(90),
        ),
        minWidth: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 12.0,
        ),
        child: Text(
          'Next',
          style: buttonStyle.copyWith(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
