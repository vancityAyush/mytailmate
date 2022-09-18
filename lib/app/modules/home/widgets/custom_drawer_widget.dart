import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/home/home_controller.dart';
import 'package:mytailmate/app/widgets/widget_helper.dart';

class CustomDrawer extends GetView {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: getImage('my_tail_mate'),
          ),
        ],
      ),
    );
  }
}
