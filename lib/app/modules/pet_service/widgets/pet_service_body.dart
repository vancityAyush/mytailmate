/**
 * Created by : Ayush Kumar
 * Created on : 04-09-2022
 */
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/pet_service/pet_service_details_page.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_colors.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';
import 'package:mytailmate/app/widgets/widget_helper.dart';

class PetSerivceBody extends StatelessWidget {
  PetSerivceBody({Key? key}) : super(key: key);
  final RxBool isEnabled = true.obs;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Column(
          children: [
            const Flexible(
              child: TabBar(
                labelColor: primaryColor,
                indicatorColor: primaryColor,
                unselectedLabelColor: Color(0xFFD3D3D3),
                labelStyle: TextStyle(
                  fontSize: 12,
                ),
                tabs: [
                  Tab(text: 'Vets'),
                  Tab(text: 'Boarding'),
                  Tab(text: 'Cafés'),
                  Tab(text: 'Pet Labs'),
                  Tab(text: 'Trainers'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        heightSpace10,
                        buildSearch(),
                        GestureDetector(
                          onTap: () {
                            Get.to(
                              () => PetServiceDetailsPage(),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    circleImage(
                                      'doc1',
                                      size: 80,
                                    ),
                                    widthSpace10,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        heightSpace10,
                                        Text(
                                          "Dr.Yathiraj KHANNA",
                                          style: muilsh70016.copyWith(
                                              color: primaryColor),
                                        ),
                                        heightSpace5,
                                        Text(
                                          "Veterinary Doctors",
                                          style: muilsh70016.copyWith(
                                            color: Color(0xFF897F7F),
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          '33 yrs exp. Overall',
                                          style: greyOutText.copyWith(
                                            fontSize: 12,
                                          ),
                                        ),
                                        RatingBar.builder(
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          itemSize: 15,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 4.0),
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const Divider(
                                  color: Color(0xFFD3D3D3),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      "Dwaraka",
                                      style:
                                          muilshBold18.copyWith(fontSize: 12),
                                    ),
                                    widthSpace10,
                                    const Icon(Icons.circle, size: 5),
                                    widthSpace5,
                                    Text(
                                      "VETS CLINIC CENTER",
                                      style: greyOutText.copyWith(fontSize: 12),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("₹ 500",
                                        style: muilshBold18.copyWith(
                                            fontSize: 12)),
                                    widthSpace10,
                                    Text(
                                      "Consultation Fees",
                                      style: greyOutText.copyWith(fontSize: 12),
                                    ),
                                  ],
                                ),
                                heightSpace10,
                                Row(
                                  children: [
                                    Container(
                                      width: (Get.width - 100) / 2,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF033F63),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.call,
                                            size: 24,
                                            color: Colors.white,
                                          ),
                                          widthSpace10,
                                          Text(
                                            "Call Us",
                                            style: textInfo.copyWith(
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      width: (Get.width - 100) / 2,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF09A71E),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                            style: textInfo.copyWith(
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Text('Vets'),
                  ),
                  Center(
                    child: Text('Vets'),
                  ),
                  Center(
                    child: Text('Vets'),
                  ),
                  Center(
                    child: Text('Vets'),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
