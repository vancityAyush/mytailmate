import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/models/product_model.dart';
import 'package:mytailmate/app/modules/shopping/shop_controller.dart';
import 'package:mytailmate/app/routes/app_pages.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_colors.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';
import 'package:mytailmate/app/widgets/widget_helper.dart';

class CartPage extends GetView<ShopController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  CartPage({Key? key}) : super(key: key);

  @override
  ShopController get controller => Get.find();
  @override
  Widget build(BuildContext context) {
    Get.put(ShopController());
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          'My Cart',
          style: muilsh70016.copyWith(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: Column(
            children: [
              ListView.separated(
                separatorBuilder: (context, index) => heightSpace20,
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return buildCartItem(controller.procuts[index]);
                },
              ),
              heightSpace20,
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 10.0,
                ),
                width: double.infinity,
                color: Color.fromRGBO(7, 76, 117, 1),
                child: Text(
                  "Price Details",
                  style: muilsh500.copyWith(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              heightSpace5,
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(0, 0),
                        blurRadius: 2)
                  ],
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  childAspectRatio: 8,
                  children: [
                    Text(
                      "MRP(4 Items",
                      style: muilsh70016.copyWith(
                        color: primaryColor,
                      ),
                    ),
                    Text(
                      "₹ 1700",
                      textAlign: TextAlign.end,
                      style: muilsh70016.copyWith(
                        color: primaryColor,
                      ),
                    ),
                    Text(
                      "Discount",
                      style: muilsh500.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "- ₹ 200",
                      textAlign: TextAlign.end,
                      style: muilsh70016.copyWith(
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      "Delivery Charges",
                      style: muilsh500.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      " ₹ 55",
                      textAlign: TextAlign.end,
                      style: muilsh70016.copyWith(
                        color: primaryColor,
                      ),
                    ),
                    Text(
                      "Promo Code",
                      style: muilsh500.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      " ₹ 0",
                      textAlign: TextAlign.end,
                      style: muilsh70016.copyWith(
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              heightSpace10,
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(0, 0),
                        blurRadius: 2)
                  ],
                ),
                child: Row(
                  children: [
                    Text(
                      "Total Amount",
                      style: muilsh70016.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "₹ 1555",
                      style: muilsh70016.copyWith(
                        color: primaryColor,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomSheet: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: '₹ 1555\n',
                  style: muilshBold18.copyWith(
                    color: primaryColor,
                    fontSize: 18,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'View Price Details',
                      style: muilsh500.copyWith(
                        color: primaryColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Get.toNamed(Routes.CHECKOUT);
              },
              child: Ink(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 10.0,
                  ),
                  color: primaryColor,
                  child: Text(
                    "Place Order",
                    style: muilshBold18.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildProductsHeader(int count) {
    return Container(
      color: Color(0xFFEFEEEE),
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$count Products",
            style: muilsh500.copyWith(fontSize: 15),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }

  Widget buildCartItem(Product product) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widthSpace10,
        getImage(
          product.img,
          height: 100,
          fit: BoxFit.contain,
        ),
        widthSpace10,
        Container(
          width: Get.width * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title,
                style: muilsh500.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Qty: ",
                    style: muilsh500.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  DropdownButton<int>(
                    value: 1,
                    items: [
                      DropdownMenuItem(
                        value: 1,
                        child: Text(
                          "1",
                          style: muilsh500.copyWith(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: Text(
                          "2",
                          style: muilsh500.copyWith(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      DropdownMenuItem(
                        value: 3,
                        child: Text(
                          "3",
                          style: muilsh500.copyWith(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      product.count = value!;
                      controller.update();
                    },
                  ),
                ],
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Price ₹ ${product.price}",
                      style: muilsh600.copyWith(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: "  ₹ ${product.price}\n",
                      style: muilsh600.copyWith(
                        color: Color(0xFF074C75),
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: "Save 12%",
                      style: muilsh600.copyWith(
                        color: Colors.blue,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              heightSpace5,
              const Divider(
                thickness: 1,
                height: 1,
                color: Color(0xFFC9BEBE),
              ),
            ],
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {
            product.removeFromCart();
            controller.update();
          },
          icon: const Icon(
            Icons.delete_outline,
            size: 15,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
