import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/models/product_model.dart';

class CheckoutController extends GetxController {
  RxInt tab = 0.obs;
  PageController pageController = PageController(initialPage: 0);
  Product product = Product(
    img: 'product1',
    title: "Pedigree Chicken Flavour Biscrok Biscuits Dog Treats",
    price: "149",
    actualPrice: "160",
    weight: 500,
  );
  @override
  void onInit() {
    super.onInit();
  }
}
