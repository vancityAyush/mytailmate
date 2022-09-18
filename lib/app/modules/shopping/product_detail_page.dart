import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/models/product_model.dart';
import 'package:mytailmate/app/modules/shopping/product_controller.dart';
import 'package:mytailmate/app/modules/shopping/widgets/product_card.dart';
import 'package:mytailmate/app/routes/app_pages.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_colors.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';
import 'package:mytailmate/app/widgets/widget_helper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailPage extends GetView<ProductController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProductController());
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
          'Product Details',
          style: muilsh70016.copyWith(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
              color: primaryColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightSpace10,
            getImage(
              controller.img,
              height: Get.height * .25,
              width: Get.width,
              fit: BoxFit.contain,
            ),
            heightSpace20,
            Align(
              alignment: Alignment.center,
              child: SmoothPageIndicator(
                controller: PageController(),
                count: 3,
                effect: const WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: Color(0xff9CD1E1),
                  dotColor: Color(0xffEDEEEE),
                ),
              ),
            ),
            heightSpace10,
            Text(
              controller.title,
              style: muilsh70016.copyWith(color: Colors.black),
            ),
            heightSpace10,
            Obx(
              () => Container(
                height: 40,
                width: 80,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: primaryColor,
                    width: 1,
                  ),
                ),
                child: DropdownButtonHideUnderline(
                    child: DropdownButton<double>(
                  style: muilsh600.copyWith(
                    color: primaryColor,
                    fontSize: 14,
                  ),
                  value: controller.weight,
                  items: const [
                    DropdownMenuItem<double>(
                      value: 500,
                      child: Text("500g"),
                    ),
                    DropdownMenuItem<double>(
                      value: 250,
                      child: Text("250g"),
                    ),
                    DropdownMenuItem<double>(
                      value: 1000,
                      child: Text("1kg"),
                    ),
                  ],
                  onChanged: (value) {
                    controller.changeWeight(value!);
                  },
                )),
              ),
            ),
            heightSpace10,
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Price",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "₹ ${controller.actualPrice}",
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: " ₹ ${controller.price}",
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    // item.addToCart();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: !controller.isAdded ? Colors.white : darkBlueColor,
                      border: !controller.isAdded
                          ? Border.all(
                              color: darkBlueColor,
                            )
                          : null,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          controller.isAdded ? "1" : "ADD ",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: !controller.isAdded
                                ? darkBlueColor
                                : Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.add,
                          size: 15,
                          color: !controller.isAdded
                              ? darkBlueColor
                              : Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            heightSpace20,
            Text(
              "Product Details",
              style: muilsh70016.copyWith(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            heightSpace10,
            Text(
              "Description",
              style: muilsh600.copyWith(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            heightSpace5,
            Text(
              "Pedigree Chicken & Vegetables Adult Dry Dog Food is a wholesome meal, packed with essential nutrients vital to the healthy growth of your pet.",
              style: muilsh500.copyWith(
                color: const Color(0xff8A7F7F),
                fontSize: 14,
              ),
            ),
            heightSpace10,
            Text(
              "Key Features",
              style: muilsh70016.copyWith(
                color: Colors.black,
              ),
            ),
            heightSpace10,
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Wholesome & Complete Diet: ",
                style: muilsh70016.copyWith(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              TextSpan(
                text:
                    "As your adult dog grows, he needs all the energy and nourishment to continue living life to his fullest.",
                style: muilsh500.copyWith(
                  fontSize: 14,
                  color: const Color(0xff8A7F7F),
                ),
              ),
            ])),
            heightSpace10,
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Wholesome & Complete Diet: ",
                style: muilsh70016.copyWith(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              TextSpan(
                text:
                    "As your adult dog grows, he needs all the energy and nourishment to continue living life to his fullest.",
                style: muilsh500.copyWith(
                  fontSize: 14,
                  color: const Color(0xff8A7F7F),
                ),
              ),
            ])),
            heightSpace10,
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Wholesome & Complete Diet: ",
                style: muilsh70016.copyWith(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              TextSpan(
                text:
                    "As your adult dog grows, he needs all the energy and nourishment to continue living life to his fullest.",
                style: muilsh500.copyWith(
                  fontSize: 14,
                  color: const Color(0xff8A7F7F),
                ),
              ),
            ])),
            heightSpace10,
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Recommended Products",
                  style: muilshBold18.copyWith(
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 0.6,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ProductCard(product: controller.product.value),
                ProductCard(product: controller.product.value),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: const BoxDecoration(
          color: darkBlueColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(2),
            topRight: Radius.circular(2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                text: '1 item\n',
                style: muilsh500.copyWith(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
                children: [
                  TextSpan(
                    text: '₹ 176',
                    style: muilsh70016.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.CART);
              },
              child: Text(
                "View Cart",
                style: muilsh70016.copyWith(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildProductCard(Product item) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: getImage(
              item.img,
              height: 100,
              fit: BoxFit.contain,
            ),
          ),
          heightSpace5,
          Text(
            item.title,
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          heightSpace5,
          Text(
            item.weight.toString(),
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          heightSpace10,
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Price",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "₹ ${item.actualPrice}",
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            color: Colors.black,
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: " ₹ ${item.price}",
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  item.addToCart();
                },
                child: Container(
                  width: 50,
                  height: 21,
                  decoration: BoxDecoration(
                    color: item.isAdded ? Colors.white : darkBlueColor,
                    border: item.isAdded
                        ? Border.all(
                            color: darkBlueColor,
                          )
                        : null,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.isAdded ? item.count.toString() : "ADD ",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 10,
                          color: item.isAdded ? darkBlueColor : Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.add,
                        size: 10,
                        color: item.isAdded ? darkBlueColor : Colors.white,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
