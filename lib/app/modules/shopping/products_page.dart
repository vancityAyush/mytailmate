import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/shopping/filter_page.dart';
import 'package:mytailmate/app/modules/shopping/shop_controller.dart';
import 'package:mytailmate/app/modules/shopping/widgets/product_card.dart';
import 'package:mytailmate/app/routes/app_pages.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_colors.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';

class ProductsPage extends GetView<ShopController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  ProductsPage({Key? key}) : super(key: key);

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
          'Pedigree Chicken',
          style: muilsh70016.copyWith(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildcategoryTabBar(),
              Obx(
                () => Expanded(
                  child: Column(
                    children: [
                      buildProductsHeader(controller.procuts.length),
                      Expanded(
                        child: GridView.builder(
                          physics: const BouncingScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.6,
                            crossAxisCount: 2,
                          ),
                          itemCount: controller.procuts.length,
                          itemBuilder: (context, index) {
                            return ProductCard(
                                product: controller.procuts[index]);
                          },
                        ),
                      ),
                      heightSpace30,
                    ],
                  ),
                ),
              ),
            ],
          ),
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

  Container buildProductsHeader(int count) {
    return Container(
      color: const Color(0xFFEFEEEE),
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$count Products",
            style: muilsh500.copyWith(fontSize: 15),
          ),
          MaterialButton(
            minWidth: 10,
            onPressed: () {
              Get.to(() => FilterPage());
            },
            child: const Icon(
              Icons.filter_alt_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }

  RotatedBox buildcategoryTabBar() {
    return RotatedBox(
      quarterTurns: 3,
      child: TabBar(
        isScrollable: true,
        labelColor: primaryColor,
        unselectedLabelColor: Colors.grey,
        labelStyle: muilshBold18.copyWith(fontSize: 14),
        indicatorColor: primaryColor,
        indicatorSize: TabBarIndicatorSize.label,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
        tabs: [
          buildTab("Dog Food\nTreats", "category1"),
          buildTab("Cat food & \nTreats", "category2"),
          buildTab("Health", "category3"),
        ].reversed.toList(),
      ),
    );
  }

  RotatedBox buildTab(String title, String image) {
    return RotatedBox(
      quarterTurns: 1,
      child: Tab(
        height: 100,
        icon: CircleAvatar(
          radius: 25,
          backgroundColor: primaryColor,
          backgroundImage: AssetImage(
            'assets/images/$image.png',
          ),
        ),
        text: title,
      ),
    );
  }
}
