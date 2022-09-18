import 'package:get/get.dart';

import '../../models/product_model.dart';

class ShopController extends GetxController {
  RxList<Product> procuts = <Product>[].obs;

  @override
  void onInit() {
    procuts.addAll([
      Product(
        img: 'product1',
        title: "Pedigree Chicken Flavour Biscrok Biscuits Dog Treats",
        price: "149",
        actualPrice: "160",
        weight: 500,
      ),
      Product(
        img: 'product2',
        title: "Purepet Chicken Flavour Real Chicken Biscuit Dog Treats",
        price: "179",
        actualPrice: "190",
        weight: 250,
        count: 2,
      ),
      Product(
        img: 'product3',
        title: "Get Naked Chicken Flavour Senior Health Dog Treats",
        price: "149",
        actualPrice: "160",
        weight: 500,
      ),
      Product(
        img: 'product4',
        title: "Himalaya Chicken Healthy Treats for Puppies",
        price: "185",
        actualPrice: "190",
        weight: 250,
      ),
      Product(
        img: 'product5',
        title: "Basil Veg Bone Shaped Adult Dog Biscuits",
        price: "149",
        actualPrice: "160",
        weight: 500,
      ),
      Product(
        img: 'product6',
        title: "Choostix Dental Plus Dog Treats",
        price: "179",
        actualPrice: "190",
        weight: 1000,
      ),
    ]);
    super.onInit();
  }

  void addToCart(int index) {
    procuts[index].addToCart();
    update();
  }

  void removeFromCart(int index) {
    procuts[index].removeFromCart();
  }
}
