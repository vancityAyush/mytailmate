import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/home/home_controller.dart';

class CustomSelectLanguageWidget extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ButtonTheme(
      alignedDropdown: true,
      child: DropdownButton(
        underline: null,
        hint: Row(
          children: [
            Image.asset(
              'assets/images/en-flag.png',
              width: 30,
              height: 30,
            ),
          ],
        ),
        value: controller.lang,
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 20,
        elevation: 16,
        onChanged: (value) => controller.changeLanguage(value),
        items: [
          DropdownMenuItem(
            value: 'pt-BR',
            child: Image.asset(
              'assets/images/br-flag.jpg',
              width: 30,
              height: 30,
            ),
          ),
          DropdownMenuItem(
            value: 'en-US',
            child: Image.asset(
              'assets/images/en-flag.png',
              width: 30,
              height: 30,
            ),
          ),
          DropdownMenuItem(
            value: 'es-MX',
            child: Image.asset(
              'assets/images/es-flag.jpg',
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
    ));
  }
}
