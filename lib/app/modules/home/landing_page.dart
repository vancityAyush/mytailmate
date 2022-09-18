import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/community/widgets/community_body.dart';
import 'package:mytailmate/app/modules/home/home_controller.dart';
import 'package:mytailmate/app/modules/home/pages/home_page.dart';
import 'package:mytailmate/app/modules/medical_records/widgets/medical_records_body.dart';
import 'package:mytailmate/app/modules/pet_service/widgets/pet_service_body.dart';
import 'package:mytailmate/app/modules/shopping/widgets/shop_body.dart';
import 'package:mytailmate/app/theme/app_colors.dart';
import 'package:mytailmate/app/widgets/widget_helper.dart';

import '../../routes/app_pages.dart';
import '../registration/widgets/my_drawer.dart';
import '../registration/widgets/my_drawer_controller.dart';
import 'widgets/bottom_nav.dart';

class LandingPage extends GetView {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final HomeController controller = Get.put(HomeController());
  List<Widget> pages = [
    HomePage(),
    MedicalRecordsBody(),
    CommunityBody(),
    PetSerivceBody(),
    ShopBody(),
  ];

  @override
  Widget build(BuildContext context) {
    Get.put(MyDrawerController());
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: getImage(
          'my_tail_mate',
          width: MediaQuery.of(context).size.width * 0.5,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.person,
              color: primaryColor,
            ),
            onPressed: () {
              Get.toNamed(Routes.PROFILE);
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.menu_outlined,
            color: primaryColor,
          ),
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
      ),
      drawer: const MyDrawer(),
      body: Obx(() => pages[controller.currentIndex.value]),
      bottomNavigationBar: BottomNav(),
    );
  }
}
