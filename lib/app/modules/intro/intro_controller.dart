import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroController extends GetxController {
  static IntroController get to => Get.find();
  final PageController pageController = PageController(initialPage: 0);
}
