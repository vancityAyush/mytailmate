import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/home/home_controller.dart';
import 'package:mytailmate/app/theme/app_colors.dart';

class CustomSwitchWidget extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Switch(
          hoverColor: Colors.red,
          activeColor: Colors.black,
          inactiveThumbColor: spotlightColor,
          activeTrackColor: spotlightColor,
          inactiveTrackColor: softBlue,
          value: controller.themeIsDark,
          onChanged: (b) => controller.changeTheme(),
        ));
  }
}
