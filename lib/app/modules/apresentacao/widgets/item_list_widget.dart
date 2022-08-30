import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';

class ItemListWidget extends Container {
  final String text;
  final Color color;

  ItemListWidget({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: Get.width,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Icon(
                Icons.fiber_manual_record,
                color: this.color,
              )),
          Expanded(
            flex: 7,
            child: Text(
              this.text,
              style: textContent,
            ),
          )
        ],
      ),
    );
  }
}
