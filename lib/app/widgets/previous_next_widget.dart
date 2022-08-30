import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/home/home_controller.dart';

class CustomNextPrevious extends GetView {
  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () => controller.previousPage()),
              Text(controller.screen > 0
                  ? controller.topics[controller.screen - 1]
                  : '')
            ],
          ),
          Row(
            children: [
              Text(controller.topics[controller.screen + 1]),
              IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () => controller.nextPage()),
            ],
          ),
        ],
      ),
    );
  }
}
