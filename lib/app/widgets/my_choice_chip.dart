/**
 * Created by : Ayush Kumar
 * Created on : 04-09-2022
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';

import '../theme/app_colors.dart';

class MyChoiceChip extends GetView {
  final String title;
  MyChoiceChip({
    Key? key,
    required this.title,
  }) : super(key: key);
  final RxBool _isSelected = false.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: ChoiceChip(
          label: Text(
            title,
            style: muilsh70016.copyWith(
              color: _isSelected.value ? Colors.white : primaryColor,
              fontSize: 16,
            ),
          ),
          labelPadding: const EdgeInsets.symmetric(
            horizontal: 14,
          ),
          side: const BorderSide(
            color: Color(0xff86C2E7),
          ),
          selected: _isSelected.value,
          selectedColor: primaryColor,
          onSelected: (bool selected) {
            _isSelected.value = selected;
          },
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
