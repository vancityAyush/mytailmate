/**
 * Created by : Ayush Kumar
 * Created on : 17-09-2022
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mytailmate/app/modules/profile/profile_details_page.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../profile_controller.dart';

class ProfileProgressIndicator extends StatelessWidget {
  const ProfileProgressIndicator({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ProfileController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SfSliderTheme(
        data: SfSliderThemeData(
          thumbRadius: 25,
          activeTrackHeight: 14,
          inactiveTrackHeight: 14,
          overlayRadius: 0,
        ),
        child: Obx(
          () => SfSlider(
            value: controller.profileCompleted.value,
            onChanged: (value) {
              // controller.profileCompleted.value = value;
              Get.to(
                () => ProfileDetailsPage(),
              );
            },
            activeColor: const Color(0xffFFCC4A),
            inactiveColor: const Color(0xffD9D9D9),
            thumbIcon: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              backgroundImage: AssetImage('assets/images/dog.png'),
            ),
          ),
        ),
      ),
    );
  }
}
