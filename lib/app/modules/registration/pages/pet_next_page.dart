/**
 * Created by : Ayush Kumar
 * Created on : 31-08-2022
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/registration/widgets/rounded_box.dart';
import 'package:mytailmate/app/routes/app_pages.dart';
import 'package:mytailmate/app/widgets/widget_helper.dart';

import '../../../theme/app_base_style.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_text_theme.dart';
import '../widgets/rounded_container.dart';

class PetNextPage extends GetView {
  const PetNextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      children: [
        const Spacer(),
        const Text('Congratulations', style: titleStyle),
        const Text('you pet has been added', style: subTitleStyle),
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
              controller.pageController.jumpToPage(0);
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
}
