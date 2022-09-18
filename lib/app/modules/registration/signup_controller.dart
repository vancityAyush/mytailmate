import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get to => Get.find();
  final PageController pageController = PageController(initialPage: 0);
}
