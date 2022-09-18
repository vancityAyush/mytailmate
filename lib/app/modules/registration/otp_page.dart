import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/intro/widgets/gradient_button.dart';
import 'package:mytailmate/app/routes/app_pages.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_colors.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import 'login_controller.dart';

class OtpPage extends GetView {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  final LoginController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            heightSpace50,
            Expanded(
              child: Image.asset('assets/gif/dog.gif'),
            ),
            heightSpace10,
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'OTP',
                style: titleStyle,
              ),
            ),
            heightSpace10,
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Verify OTP before getting started!',
                style: subTitleStyle,
              ),
            ),
            heightSpace50,
            heightSpace30,
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: OTPTextField(
                length: 6,
                width: double.infinity,
                style: otpTextStyle,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
              ),
            ),
            heightSpace30,
            GradientButton(
              onPressed: () {
                Get.toNamed(Routes.START);
              },
              title: 'Verify Phone Number',
            ),
            heightSpace20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Edit phone number ?",
                  style: bottomTextStyle,
                ),
                Text(
                  "Send again",
                  style: bottomTextStyle.copyWith(color: primaryColor),
                )
              ],
            ),
            heightSpace30,
          ],
        ),
      ),
    );
  }
}
