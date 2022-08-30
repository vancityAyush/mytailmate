import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';

class CustomTitleWidget extends Container {
  final String title;

  CustomTitleWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            this.title.tr,
            style: titulo,
          ),
        ],
      ),
    );
  }
}
