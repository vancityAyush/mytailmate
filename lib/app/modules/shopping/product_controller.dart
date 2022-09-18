import 'package:get/get.dart';

import '../../models/product_model.dart';

class ProductController extends GetxController {
  Rx<Product> product = Rx<Product>(Get.arguments);

  @override
  void onInit() {
    super.onInit();
  }

  void changeWeight(double weight) {
    product.update((val) {
      val!.weight = weight;
    });
  }

  String get img => product.value.img;
  String get title => product.value.title;
  String get price => product.value.price;
  String get actualPrice => product.value.actualPrice;
  double get weight => product.value.weight;
  bool get isAdded => product.value.isAdded;
}
