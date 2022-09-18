/**
 * Created by : Ayush Kumar
 * Created on : 15-09-2022
 */
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:mytailmate/app/routes/app_pages.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';

import '../../../models/product_model.dart';
import '../../../theme/app_colors.dart';
import '../../../widgets/widget_helper.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.PRODUCT_DETAIL, arguments: product);
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: getImage(
                product.img,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
            heightSpace5,
            Text(
              product.title,
              maxLines: 2,
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            heightSpace5,
            Text(
              product.weight.toString(),
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
                            text: "₹ ${product.actualPrice}",
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              color: Colors.black,
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: " ₹ ${product.price}",
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
                    product.addToCart();
                  },
                  child: Container(
                    width: 50,
                    height: 21,
                    decoration: BoxDecoration(
                      color: product.isAdded ? Colors.white : darkBlueColor,
                      border: product.isAdded
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
                          product.isAdded ? product.count.toString() : "ADD ",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 10,
                            color:
                                product.isAdded ? darkBlueColor : Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.add,
                          size: 10,
                          color: product.isAdded ? darkBlueColor : Colors.white,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
