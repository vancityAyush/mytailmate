/**
 * Created by : Ayush Kumar
 * Created on : 04-09-2022
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_colors.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';

class MedicalRecordsBody extends StatelessWidget {
  MedicalRecordsBody({Key? key}) : super(key: key);
  final RxBool isEnabled = true.obs;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  const TabBar(
                    labelColor: Colors.black,
                    indicatorColor: primaryColor,
                    tabs: [
                      Tab(text: 'Vaccination'),
                      Tab(text: 'Deworming'),
                    ],
                  ),
                  SizedBox(
                    height: 240,
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Upcoming",
                                    style: muilsh70016.copyWith(
                                        color: primaryColor),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Reminder Enabled",
                                    style: muilsh600.copyWith(
                                        color: primaryColor, fontSize: 16),
                                  ),
                                  Switch(
                                    activeTrackColor: primaryColor,
                                    activeColor: Colors.white,
                                    value: true,
                                    onChanged: (value) {},
                                  )
                                ],
                              ),
                              buildCard("Dhppi"),
                              heightSpace10,
                              buildCard("Canine Coronavirus"),
                            ],
                          ),
                        ),
                        Center(child: Text('Medical History')),
                      ],
                    ),
                  ),
                ],
              )),
          heightSpace20,
          DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  const TabBar(
                    labelColor: Colors.black,
                    indicatorColor: primaryColor,
                    tabs: [
                      Tab(text: 'My Records'),
                      Tab(text: 'Vaccination List'),
                    ],
                  ),
                  heightSpace10,
                  SizedBox(
                    height: 400,
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Upcoming",
                                    style: muilsh70016.copyWith(
                                        color: primaryColor),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Reminder Enabled",
                                    style: muilsh600.copyWith(
                                        color: primaryColor, fontSize: 16),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Status",
                                    style: muilsh600.copyWith(
                                        color: primaryColor, fontSize: 16),
                                  ),
                                ],
                              ),
                              buildCard(
                                "Dhppi",
                                showChanged: false,
                              ),
                              heightSpace10,
                              buildCard(
                                "Canine Coronavirus",
                                showChanged: false,
                              ),
                              heightSpace10,
                              buildCard(
                                "DHPPi First Booster",
                                showChanged: false,
                              ),
                            ],
                          ),
                        ),
                        Center(child: Text('Medical History')),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  Card buildCard(String title, {bool showChanged = true}) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
        child: Row(
          children: [
            Text(
              title,
              style: muilsh600.copyWith(color: Colors.black, fontSize: 12),
            ),
            Spacer(),
            RichText(
              text: TextSpan(
                  text: "20-Aug-22\n",
                  style: muilsh600.copyWith(color: Colors.black, fontSize: 12),
                  children: [
                    TextSpan(
                        text: showChanged ? "Changed" : '',
                        style: muilsh600.copyWith(
                            color: Colors.black, fontSize: 12)),
                  ]),
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90),
                ),
              ),
              onPressed: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  "Update",
                  style:
                      muilsh70016.copyWith(color: primaryColor, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
