import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/community/community_controller.dart';
import 'package:mytailmate/app/modules/home/home_controller.dart';
import 'package:mytailmate/app/modules/home/widgets/bottom_nav.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_colors.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/widget_helper.dart';

class ExpertAdvicePage extends GetView<CommunityController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  ExpertAdvicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CommunityController());
    Get.put(HomeController());
    return Scaffold(
      extendBodyBehindAppBar: true,
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
        title: const Text(
          'Grooming',
          style: appBarText,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          getImage(
            "expert_advice",
            fit: BoxFit.cover,
            height: Get.height * 0.25,
            width: Get.width,
          ),
          Column(
            children: [
              Expanded(
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: controller.pageController,
                  children: [
                    buildCard(1),
                    buildCard(2),
                    buildCard(3),
                    buildCard(4),
                  ],
                ),
              ),
              SmoothPageIndicator(
                count: 4,
                controller: controller.pageController,
                effect: const WormEffect(
                  activeDotColor: primaryColor,
                  dotColor: greyColor,
                  dotHeight: 10,
                  dotWidth: 10,
                ),
              ),
              heightSpace20,
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }

  Card buildCard(int index) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 3,
      margin: EdgeInsets.only(top: Get.height * 0.2, bottom: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              heightSpace10,
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 60,
                  height: 23,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 0),
                          blurRadius: 4),
                    ],
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Text(
                    '${index} TO 10',
                    style: muilsh600.copyWith(color: Colors.white),
                  ),
                ),
              ),
              Text(
                "Coat Care For Your Dog",
                style: muilsh600.copyWith(
                  color: Color(0xff033F63),
                  fontSize: 24,
                ),
              ),
              heightSpace30,
              ListTile(
                leading: const Icon(
                  Icons.circle,
                  color: Color(0xff033F63),
                  size: 10,
                ),
                horizontalTitleGap: 0,
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lacus, vestibulum elit a maecenas.",
                  style: muilsh600.copyWith(
                    color: Color(0xff033F63),
                    fontSize: 14,
                  ),
                ),
              ),
              heightSpace10,
              ListTile(
                leading: const Icon(
                  Icons.circle,
                  color: Color(0xff033F63),
                  size: 10,
                ),
                horizontalTitleGap: 0,
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lacus, vestibulum elit a maecenas.",
                  style: muilsh600.copyWith(
                    color: Color(0xff033F63),
                    fontSize: 14,
                  ),
                ),
              ),
              heightSpace10,
              ListTile(
                leading: const Icon(
                  Icons.circle,
                  color: Color(0xff033F63),
                  size: 10,
                ),
                horizontalTitleGap: 0,
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lacus, vestibulum elit a maecenas.",
                  style: muilsh600.copyWith(
                    color: Color(0xff033F63),
                    fontSize: 14,
                  ),
                ),
              ),
              heightSpace20,
              getImage(
                'tutorial_image',
                fit: BoxFit.cover,
              ),
              heightSpace20,
              Row(
                children: [
                  getImage(
                    "img1",
                    height: 30,
                    fit: BoxFit.fitWidth,
                  ),
                  Text(
                    "PLUTO",
                    style: muilsh600.copyWith(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  widthSpace5,
                  getImage(
                    "img2",
                    width: 30,
                    fit: BoxFit.fitWidth,
                  ),
                  Text(
                    "ARUSHI",
                    style: muilsh600.copyWith(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              heightSpace20,
              Row(
                children: [
                  Icon(
                    Icons.favorite_outline,
                  ),
                  widthSpace5,
                  Text(
                    "Like The Guide",
                    style: muilsh600.copyWith(
                      fontSize: 16,
                      color: Color(0xff5C5757),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.share_outlined,
                  ),
                  widthSpace5,
                  Text(
                    "Share",
                    style: muilsh600.copyWith(
                      fontSize: 16,
                      color: Color(0xff5C5757),
                    ),
                  )
                ],
              ),
              heightSpace30,
            ],
          ),
        ),
      ),
    );
  }
}
