import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_colors.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';

class FilterPage extends GetView {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  FilterPage({Key? key}) : super(key: key);
  List<String> filterList = ["Brand", "Category", "Price", "Size"];
  List<String> sortList = [
    "Price (Low to High)",
    "Price (High to Low)",
    "Newest",
    "Oldest"
  ];
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
        title: Text(
          'Filter Products',
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
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Color(0xffF5FAFD),
            width: Get.width * 0.3,
            child: Column(
              children: [
                for (String item in filterList)
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      item,
                      style: muilsh70016.copyWith(color: Colors.black),
                    ),
                  ),
              ],
            ),
          ),
          Container(
            width: Get.width * 0.7,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: sortList.length,
                itemBuilder: (context, index) => RadioListTile(
                      activeColor: primaryColor,
                      value: 0,
                      groupValue: index,
                      onChanged: (val) {},
                      title: Text(
                        sortList[index],
                        style: muilsh500.copyWith(
                          color: Color(0xff766F6F),
                          fontSize: 14,
                        ),
                      ),
                    )),
          ),
        ],
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MaterialButton(
              onPressed: () {
                Get.back();
              },
              color: primaryColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(90),
                ),
              ),
              child: Text(
                "Apply",
                style: muilsh500.copyWith(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            widthSpace20,
          ],
        ),
      ),
    );
  }
}
