/**
 * Created by : Ayush Kumar
 * Created on : 04-09-2022
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mytailmate/app/routes/app_pages.dart';

import '../../../theme/app_base_style.dart';
import '../../../theme/app_text_theme.dart';
import '../../../widgets/widget_helper.dart';

class OptionsWidget extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> options;
  const OptionsWidget({Key? key, required this.title, required this.options})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            title,
            style: muilsh70016.copyWith(
              color: Colors.black,
            ),
          ),
        ),
        Container(
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: options.length,
            separatorBuilder: (context, index) => widthSpace5,
            itemBuilder: (BuildContext context, int index) {
              Map<String, dynamic> item = options[index];
              return buildCard(
                  item['title'], item['img'], item['num'] ?? '2888',
                  onTap: item['onTap'], isVideo: item['isVideo'] ?? false);
            },
          ),
        )
      ],
    );
  }

  Widget buildCard(String title, String img, String num,
      {double? width,
      double height = 90,
      bool isVideo = false,
      void Function()? onTap}) {
    width = (Get.width - 50) / 3;
    return GestureDetector(
      onTap: () {
        print("ok");
        if (isVideo) {
          Get.toNamed(Routes.EXPERT_ADVICE_VIDEO);
        } else {
          Get.toNamed(Routes.EXPERT_ADIVCE);
        }
      },
      child: Column(
        children: [
          SizedBox(
            width: width,
            height: height / 2 - 5,
            child: Stack(
              children: [
                Container(
                  width: width,
                  height: height / 2 - 5,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 2),
                          blurRadius: 2)
                    ],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/$img.png'),
                    ),
                  ),
                ),
                const Positioned(
                  top: 5,
                  right: 5,
                  child: Icon(
                    Icons.share_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Visibility(
                    visible: isVideo,
                    child: const Icon(
                      Icons.video_collection_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width,
            height: height / 2 + 5,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 2),
                    blurRadius: 2)
              ],
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              shape: BoxShape.rectangle,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  title,
                  style: muilsh600,
                ),
                Spacer(),
                Row(
                  children: [
                    getImage('eye', width: 15, height: 15),
                    Spacer(),
                    Text(
                      "$num parents read this",
                      style: muilsh500.copyWith(fontSize: 8),
                    ),
                    Spacer(),
                  ],
                ),
                heightSpace5,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
