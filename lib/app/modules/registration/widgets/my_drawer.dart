/**
 * Created by : Ayush Kumar
 * Created on : 03-09-2022
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/registration/widgets/my_drawer_controller.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';
import 'package:mytailmate/app/widgets/widget_helper.dart';

class MyDrawer extends GetView<MyDrawerController> {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 16,
            ),
            child: getImage(
              'my_tail_mate',
            ),
          ),
          for (Map<String, String> item in controller.menuItems)
            ListTile(
              title: Text(
                item[TITLE] ?? '',
                style: textInfo.copyWith(color: Colors.black),
              ),
              onTap: () {
                Get.toNamed(item[CLICK] ?? '');
              },
              leading: Image.asset(
                'assets/icons/${item[ICON]}.png',
                width: 30,
                height: 30,
                fit: BoxFit.contain,
              ),
            ),
        ],
      ),
    );
  }
}
