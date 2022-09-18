/**
 * Created by : Ayush Kumar
 * Created on : 03-09-2022
 */
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/home/pages/home_page_controller.dart';
import 'package:mytailmate/app/routes/app_pages.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/widgets/widget_helper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_text_theme.dart';

class HomePage extends GetView<HomePageController> {
  HomePage({Key? key}) : super(key: key);

  @override
  HomePageController controller = Get.put(HomePageController());
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        horizontal: 22.0,
        vertical: 16,
      ),
      children: [
        buildSearch(),
        heightSpace20,
        buildCarouselSlider(),
        heightSpace5,
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SmoothPageIndicator(
              count: 4,
              controller: PageController(viewportFraction: 1),
              effect: const WormEffect(
                activeDotColor: dotColor,
                dotColor: greyColor,
                dotHeight: 5,
                dotWidth: 5,
              ),
            ),
          ),
        ),
        heightSpace5,
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          mainAxisSpacing: 10,
          children: [
            buildContainer('Community', 'community',
                width: MediaQuery.of(context).size.width * 0.4,
                ROUTES: Routes.COMMUNITY),
            buildContainer('Pet Service', 'pet_service',
                width: MediaQuery.of(context).size.width * 0.4,
                ROUTES: Routes.PETSERVICE),
            buildContainer('Medical Records', 'medical_records',
                width: MediaQuery.of(context).size.width * 0.4,
                ROUTES: Routes.MEDICALRECORDS),
            buildContainer('Shop With Us', 'shop_with_us',
                ROUTES: Routes.SHOPWITHUS,
                width: MediaQuery.of(context).size.width * 0.4),
          ],
        ),
        heightSpace20,
        buildSeeMoreHeader("Shop Categories"),
        heightSpace20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildCircleOption(
              context,
              "BEDS",
              'shop1',
            ),
            buildCircleOption(
              context,
              "BOWLS",
              'shop2',
            ),
            buildCircleOption(
              context,
              "CLOTHES",
              'shop3',
            ),
            buildCircleOption(
              context,
              "TOYS",
              'shop4',
            ),
          ],
        ),
        heightSpace20,
        buildSeeMoreHeader("Backers nearby"),
        heightSpace20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildRectOption(
              context,
              "Sakshi Pet Boarding",
              'backers1',
            ),
            buildRectOption(
              context,
              "Sakshi Pet Boarding",
              'backers2',
            ),
            buildRectOption(
              context,
              "Sakshi Pet Boarding",
              'backers3',
            ),
          ],
        )
      ],
    );
  }

  Widget buildCircleOption(BuildContext context, String title, String img) {
    return Column(
      children: [
        circleImage(img, size: (MediaQuery.of(context).size.width - 100) / 4),
        heightSpace5,
        Text(
          title,
          style: optionStyle,
        ),
      ],
    );
  }

  Widget buildRectOption(BuildContext context, String title, String img) {
    return Column(
      children: [
        Container(
          width: 106.0,
          height: 120.0,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  offset: Offset(0, 2),
                  blurRadius: 2)
            ],
            borderRadius: BorderRadius.circular(12.0),
            shape: BoxShape.rectangle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/$img.png'),
            ),
          ),
        ),
        heightSpace5,
        Text(
          title,
          style: optionStyle.copyWith(fontSize: 12),
        ),
        Text(
          "INR 600 Boarding",
          style: optionStyle.copyWith(fontSize: 12),
        ),
      ],
    );
  }

  Row buildSeeMoreHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '  $title',
          style: muilshBold18.copyWith(color: primaryColor),
        ),
        Text(
          'See More',
          style: subTitleStyle.copyWith(color: primaryColor),
        ),
      ],
    );
  }

  CarouselSlider buildCarouselSlider() {
    return CarouselSlider(
      carouselController: controller.carouselController,
      options: CarouselOptions(viewportFraction: 1),
      items: [1, 2, 3, 4, 5].map(
        (i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                height: 200,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Image border
                  child: Image.asset(
                    'assets/images/carousel1.png',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                ),
              );
            },
          );
        },
      ).toList(),
    );
  }

  Widget buildContainer(
    String title,
    String image, {
    double width = 150,
    String ROUTES = '',
  }) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(ROUTES);
      },
      child: Column(
        children: [
          Container(
            width: width,
            height: width + 30,
            color: Color(0xffF5FAFD),
            padding: EdgeInsets.all(8),
            child: getImage(
              image,
              width: width - 20,
              height: width + 10,
              fit: BoxFit.cover,
            ),
          ),
          heightSpace5,
          Text(
            title,
            style: textInfo.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
