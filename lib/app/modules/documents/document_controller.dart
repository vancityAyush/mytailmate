import 'package:get/get.dart';

class DocumentController extends GetxController {
  //TODO: Implement PrivacyController

  final count = 0.obs;
  final Overview = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
