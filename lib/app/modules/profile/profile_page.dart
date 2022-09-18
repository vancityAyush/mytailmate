import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/profile/profile_controller.dart';
import 'package:mytailmate/app/modules/profile/widgets/profile_progress.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_colors.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';
import 'package:mytailmate/app/widgets/widget_helper.dart';

class ProfilePage extends GetView<ProfileController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Column(
        children: [
          heightSpace10,
          ProfileProgressIndicator(controller: controller),
          heightSpace5,
          Obx(
            () => Text(
              "Profile Completed ${controller.percentProfileCompleted}%",
              style: muilsh600.copyWith(
                color: primaryColor,
                fontSize: 16,
              ),
            ),
          ),
          heightSpace10,
          TabBar(
            labelPadding: EdgeInsets.zero,
            controller: controller.tabController,
            indicatorColor: primaryColor,
            indicatorWeight: 7,
            tabs: [
              Obx(
                () => buildTab(
                  "My Profile",
                  'profile',
                  controller.currentTab.value == 0,
                ),
              ),
              Obx(
                () => buildTab(
                  "Pet Profile",
                  'pet_profile',
                  controller.currentTab.value == 1,
                ),
              ),
            ],
          ),
          heightSpace10,
          Expanded(
            child: TabBarView(
              physics: const BouncingScrollPhysics(),
              controller: controller.tabController,
              children: [
                ListView(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  children: [
                    Text(
                      "Personal details",
                      style: muilsh70016.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    heightSpace10,
                    buildTextEntry("Full Name", "Ayush Kumar"),
                    heightSpace10,
                    buildDateEntry(context, "Date of Birth", DateTime.now()),
                    heightSpace10,
                    buildGenderEntry(),
                    heightSpace10,
                    buildTextEntry("Email", "eliasakeleven@gmail.com"),
                    heightSpace30,
                    buildSaveButton(),
                    heightSpace5,
                  ],
                ),
                ListView(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Text(
                        "Pet details",
                        style: muilsh70016.copyWith(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      trailing: MaterialButton(
                        color: primaryColor,
                        onPressed: () {
                          Get.bottomSheet(
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                heightSpace30,
                                Container(
                                  child: getImage(
                                    "add_pet_banner",
                                    width: 100,
                                  ),
                                ),
                                heightSpace30,
                                ListTile(
                                  onTap: () {
                                    Get.bottomSheet(
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          heightSpace30,
                                          Container(
                                            child: getImage(
                                              "add_pet_banner",
                                              width: 100,
                                            ),
                                          ),
                                          heightSpace30,
                                          ListTile(
                                            leading: getCircleImage(
                                              "pluto",
                                            ),
                                            title: Text(
                                              "Pluto",
                                              style: muilsh70016.copyWith(
                                                color: primaryColor,
                                                fontSize: 20,
                                              ),
                                            ),
                                            trailing: Radio(
                                              activeColor: primaryColor,
                                              value: 1,
                                              groupValue: 1,
                                              onChanged: (value) {},
                                            ),
                                          ),
                                          heightSpace20,
                                          ListTile(
                                            leading: getCircleImage(
                                              "katty",
                                            ),
                                            title: Text(
                                              "Katty",
                                              style: muilsh70016.copyWith(
                                                color: primaryColor,
                                                fontSize: 20,
                                              ),
                                            ),
                                            trailing: Radio(
                                              activeColor: primaryColor,
                                              value: 1,
                                              groupValue: 2,
                                              onChanged: (value) {},
                                            ),
                                          ),
                                          heightSpace50,
                                        ],
                                      ),
                                      backgroundColor: const Color(0xffF2F6FC),
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40),
                                        ),
                                      ),
                                    );
                                  },
                                  leading: getCircleImage(
                                    "pluto",
                                  ),
                                  title: Text(
                                    "Pluto",
                                    style: muilsh70016.copyWith(
                                      color: primaryColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                  trailing: Radio(
                                    activeColor: primaryColor,
                                    value: 1,
                                    groupValue: 1,
                                    onChanged: (value) {},
                                  ),
                                ),
                                heightSpace20,
                                ListTile(
                                  leading: getCircleImage(
                                    "katty",
                                  ),
                                  title: Text(
                                    "Katty",
                                    style: muilsh70016.copyWith(
                                      color: primaryColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                  trailing: Radio(
                                    activeColor: primaryColor,
                                    value: 1,
                                    groupValue: 2,
                                    onChanged: (value) {},
                                  ),
                                ),
                                heightSpace50,
                              ],
                            ),
                            backgroundColor: const Color(0xffF2F6FC),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                              ),
                            ),
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Text(
                          "Add Pet",
                          style: muilsh70016.copyWith(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    heightSpace10,
                    buildTextEntry("Name", "Pluto"),
                    heightSpace10,
                    buildTextEntry("Breed", "Pluto"),
                    heightSpace10,
                    buildDateEntry(context, "Date of Birth", DateTime.now()),
                    heightSpace10,
                    buildGenderEntry(),
                    heightSpace30,
                    buildSaveButton(),
                    heightSpace5,
                  ],
                ),
              ],
            ),
          ),
          heightSpace20,
        ],
      ),
    );
  }

  Widget buildSaveButton() {
    return MaterialButton(
      onPressed: () {},
      color: primaryColor,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "Save",
        style: muilsh70016.copyWith(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget buildGenderEntry() {
    return buildTitleContainer(
      "Gender",
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildRadioText(Gender.MALE),
          buildRadioText(Gender.FEMALE),
        ],
      ),
    );
  }

  Widget buildRadioText(Gender gender) {
    return Container(
      width: Get.width * 0.4,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(0, 0),
              blurRadius: 4)
        ],
      ),
      child: Obx(
        () => Row(
          children: [
            Radio<Gender>(
              value: gender,
              groupValue: controller.currentGender.value,
              onChanged: (value) {
                controller.currentGender.value = value!;
              },
              activeColor: primaryColor,
            ),
            Text(
              genderMap[gender]!,
              style: muilsh70016.copyWith(
                color: Colors.black,
              ),
            ),
            widthSpace30,
          ],
        ),
      ),
    );
  }

  Widget buildDateEntry(BuildContext context, String title, DateTime date) {
    return buildTitleContainer(
        title,
        buildContainer(
          TextField(
            style: muilsh70016.copyWith(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              hintText: "${date.day}/${date.month}/${date.year}",
              hintStyle: muilsh600.copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
              border: InputBorder.none,
              suffixIcon: MaterialButton(
                shape: const CircleBorder(),
                minWidth: 20,
                onPressed: () async {
                  await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1999),
                      lastDate: DateTime(2025));
                },
                child: const Icon(
                  Icons.calendar_month,
                  color: primaryColor,
                ),
              ),
            ),
          ),
        ));
  }

  Widget buildTab(String title, String image, bool isSelected) {
    return Container(
      width: double.infinity,
      color: isSelected ? Color(0xffBDD0F0) : Colors.white,
      child: Column(
        children: [
          heightSpace10,
          Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  getCircleImage(image, size: 40),
                  heightSpace20,
                ],
              ),
              if (isSelected)
                Positioned(
                  bottom: 0,
                  child: getCircularImage('camera', size: 15),
                ),
            ],
          ),
          Text(
            title,
            style: muilsh70016.copyWith(fontSize: 20, color: Colors.black),
          ),
          heightSpace5,
        ],
      ),
    );
  }

  Widget buildTextEntry(String title, String initialText) {
    return buildTitleContainer(
      title,
      buildContainer(
        TextField(
          style: muilsh70016.copyWith(
            color: Colors.black,
          ),
          decoration: InputDecoration(
            hintText: initialText,
            hintStyle: muilsh600.copyWith(
              color: Colors.black,
              fontSize: 16,
            ),
            border: InputBorder.none,
            suffixIcon: const Icon(
              Icons.edit,
              color: primaryColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildContainer(Widget child, {double? width}) {
    return Container(
      width: width,
      padding: const EdgeInsets.only(left: 15, right: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(0, 0),
              blurRadius: 4)
        ],
      ),
      child: child,
    );
  }

  Widget buildTitleContainer(String title, Widget child) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        heightSpace10,
        Text(
          title,
          style: muilsh500.copyWith(fontSize: 18, color: Colors.black),
        ),
        heightSpace10,
        child,
      ],
    );
  }
}
