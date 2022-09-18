import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum Gender { MALE, FEMALE }

Map<Gender, String> genderMap = {
  Gender.MALE: "Male",
  Gender.FEMALE: "Female",
};

class ProfileController extends GetxController
    with GetSingleTickerProviderStateMixin {
  static ProfileController get to => Get.find();
  final PageController pageController = PageController(initialPage: 0);
  RxDouble profileCompleted = 0.4.obs;

  Rx<Gender> currentGender = Gender.MALE.obs;
  late TabController tabController;
  RxInt currentTab = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 2);
    tabController.addListener(() {
      currentTab.value = tabController.index;
    });
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  int get tabIndex => tabController.index;

  String get percentProfileCompleted =>
      (profileCompleted * 100).toStringAsFixed(0);
}
