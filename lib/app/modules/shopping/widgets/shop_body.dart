/**
 * Created by : Ayush Kumar
 * Created on : 04-09-2022
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_colors.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';
import 'package:mytailmate/app/widgets/widget_helper.dart';

import '../../../routes/app_pages.dart';

class ShopBody extends StatelessWidget {
  ShopBody({Key? key}) : super(key: key);
  final RxBool isEnabled = true.obs;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        horizontal: 22.0,
        vertical: 16,
      ),
      children: [
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: [
            buildCategoryCard(
              "shopwith1",
              "Accessories",
            ),
            buildCategoryCard(
              "shopwith2",
              "Clothes",
            ),
            buildCategoryCard(
              "shopwith3",
              "Food",
            ),
            buildCategoryCard(
              "shopwith4",
              "Grooming",
            ),
            buildCategoryCard(
              "shopwith5",
              "Toys",
            ),
            buildCategoryCard(
              "shopwith6",
              "Birthday Gifts",
            ),
          ],
        ),
        heightSpace10,
        Align(
          alignment: Alignment.center,
          child: Text(
            "Featured Brands",
            style: muilshBold18.copyWith(color: primaryColor),
          ),
        ),
        heightSpace10,
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          mainAxisSpacing: 20,
          crossAxisSpacing: 5,
          children: [
            buildBrandCard("brand1"),
            buildBrandCard("brand2"),
            buildBrandCard("brand3"),
            buildBrandCard("brand4"),
            buildBrandCard("brand5"),
            buildBrandCard("brand6"),
            buildBrandCard("brand7"),
            buildBrandCard("brand8"),
          ],
        )
      ],
    );
  }

  Widget buildBrandCard(String image) {
    return Container(
      margin: const EdgeInsets.all(2),
      height: 75,
      width: 75,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.25), blurRadius: 4),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        child: Image.asset(
          "assets/images/$image.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildCategoryCard(String image, String title) {
    return Container(
      color: Color(0xffF5FAFD),
      child: MaterialButton(
        onPressed: () {
          Get.toNamed(Routes.PRODUCT);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 140,
              child: getImage(
                image,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Color.fromRGBO(3, 63, 99, 1),
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  height: 1.5),
            ),
            heightSpace5,
          ],
        ),
      ),
    );
  }
}
