import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/home/home_controller.dart';
import 'package:mytailmate/app/theme/app_colors.dart';

class CustomItemDrawer extends GetView {
  final String text;
  final int index;
  final HomeController controller = Get.find<HomeController>();
  CustomItemDrawer({required this.text, required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Get.isDarkMode ? softBlue : spotlightColor,
      highlightColor: Get.isDarkMode ? softBlue : spotlightColor,
      splashColor: Get.isDarkMode ? spotlightColor : softBlue,
      onTap: () {
        controller.screen = index;
        Scaffold.of(context).openEndDrawer();
      },
      child: Container(
          padding: EdgeInsets.all(16),
          child: Text(
            this.text,
            style: TextStyle(fontSize: 16),
          )),
    );
  }
}
