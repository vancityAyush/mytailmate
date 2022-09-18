import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mytailmate/app/modules/intro/widgets/gradient_button.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';

import '../../routes/app_pages.dart';
import 'login_controller.dart';

class LoginPage extends GetView {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  final LoginController controller = Get.put(
    LoginController(),
  );
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
                'LOGIN',
                style: titleStyle,
              ),
            ),
            heightSpace10,
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'we will send an sms with a verification code on this number',
                style: subTitleStyle,
              ),
            ),
            heightSpace50,
            heightSpace30,
            IntlPhoneField(
              dropdownIcon:
                  Icon(Icons.keyboard_arrow_down, color: Colors.black),
              decoration: InputDecoration(
                enabledBorder: roundedBorder,
                focusedBorder: roundedBorder,
                border: roundedBorder,
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {},
            ),
            heightSpace30,
            GradientButton(
              onPressed: () {
                Get.offNamed(
                  Routes.OTP,
                );
              },
              title: 'Send the Code',
            ),
            heightSpace50,
            heightSpace30,
          ],
        ),
      ),
    );
  }
}
