import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/pet_service/pet_service_controller.dart';
import 'package:mytailmate/app/theme/app_colors.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';

import '../../theme/app_base_style.dart';
import '../../widgets/widget_helper.dart';

class PetServiceDetailsPage extends GetView<PetSerivceController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  final PetSerivceController controller = Get.put(PetSerivceController());

  PetServiceDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        title: const Text(
          'Pet Serivce',
          style: appBarText,
        ),
        backgroundColor: Colors.white,
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
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  ListTile(
                    horizontalTitleGap: 0,
                    leading: circleImage(
                      'doc1',
                      size: 80,
                    ),
                    title: Text(
                      "Profile Summary",
                      style: muilshBold18.copyWith(color: primaryColor),
                    ),
                    subtitle: Text(
                      'Dr. Yathiraj is an amazing veterinary expert, who works towards better developement of pets across thier lifecycle and provide fact based guidance related to Pet health.',
                      style: greyOutText.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    isThreeLine: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            const WidgetSpan(
                              child: Icon(
                                Icons.call,
                                color: primaryColor,
                                size: 20,
                              ),
                            ),
                            TextSpan(
                              text: " Call Vet",
                              style: muilshBold18.copyWith(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      widthSpace10,
                      RichText(
                        text: TextSpan(
                          text: "₹1000 ",
                          style: muilsh70016.copyWith(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: "Consultation Fees",
                              style: muilsh70016.copyWith(
                                  fontSize: 12, color: Color(0xffA89B9B)),
                            ),
                          ],
                        ),
                      ),
                      widthSpace10,
                      RichText(
                        text: TextSpan(
                          children: [
                            const WidgetSpan(
                              child: Icon(
                                Icons.location_on,
                                color: Colors.redAccent,
                                size: 20,
                              ),
                            ),
                            TextSpan(
                              text: " Dwarka",
                              style: muilshBold18.copyWith(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  heightSpace10,
                ],
              ),
            ),
            heightSpace30,
            CarouselSlider(
              options: CarouselOptions(
                height: 150,
                viewportFraction: 1.0,
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 1),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/banner_food.png',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            buildOptions(
              "Services",
              [
                "Veterinary Service",
                "Verterinary Treatment",
                "Vaccination/Immunization",
                "Emergency Care",
                "Pet Grooming"
              ],
            ),
            heightSpace20,
            buildOptions(
              "Specilization",
              [
                "Veterinary surgeon",
                "Veterinary Physician",
              ],
            ),
            heightSpace20,
            buildOptions("Awards & Recognization", ["Veterinary certifcate"]),
            heightSpace10,
            buildOptions2({
              'title1': "Education",
              "title2": "Membership",
              "data1": "MVSC",
              "data2": "INDIAN SOCIETY OF VETERINARY SURGEON"
            }),
            heightSpace20,
            buildOptions2({
              'title1': "Experience",
              "title2": "Registration",
              "data1": "+8 years",
              "data2": "hnvc-1735 HARYANA VETERINARY COUNCIL"
            }),
            heightSpace10,
            Container(
              width: Get.width,
              child: Row(
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  Container(
                    width: (Get.width - 100) / 2,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color(0xFF033F63),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.call,
                          size: 24,
                          color: Colors.white,
                        ),
                        widthSpace10,
                        Text(
                          "Call Us",
                          style: textInfo.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Container(
                    width: (Get.width - 100) / 2,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color(0xFF09A71E),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        getImage(
                          'whatsapp',
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                        ),
                        widthSpace10,
                        Text(
                          "Whatsapp",
                          style: textInfo.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
            heightSpace20,
          ],
        ),
      ),
    );
  }

  Widget buildOptions(String title, List<String> options) {
    return Card(
      margin: EdgeInsets.all(2.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              style: muilshBold18.copyWith(
                color: primaryColor,
                height: 1.5,
              ),
            ),
            heightSpace20,
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 4,
              shrinkWrap: true,
              children: [
                for (String item in options)
                  Text(
                    item,
                    textAlign: TextAlign.start,
                    style: muilsh70016.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildOptions2(Map<String, String> data) {
    return Card(
      margin: EdgeInsets.all(2.0),
      child: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          childAspectRatio: 4,
          shrinkWrap: true,
          crossAxisCount: 2,
          children: [
            Text(
              data['title1']!,
              style: muilshBold18.copyWith(
                color: primaryColor,
                height: 1.5,
              ),
            ),
            Text(
              data['title2']!,
              style: muilshBold18.copyWith(
                color: primaryColor,
                height: 1.5,
              ),
            ),
            Text(
              data['data1']!,
              textAlign: TextAlign.start,
              style: muilsh70016.copyWith(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            Text(
              data["data2"]!,
              textAlign: TextAlign.start,
              style: muilsh70016.copyWith(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
