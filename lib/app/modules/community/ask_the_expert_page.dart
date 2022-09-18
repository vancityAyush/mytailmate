import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/community/community_controller.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';
import 'package:mytailmate/app/widgets/widget_helper.dart';

import '../../routes/app_pages.dart';

class AskTheExpertsPage extends GetView<CommunityController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  final CommunityController controller = Get.put(CommunityController());

  AskTheExpertsPage({Key? key}) : super(key: key);

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
          'Ask The Experts',
          style: appBarText.copyWith(
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: buildAskExpertTab(),
      bottomSheet: GestureDetector(
        onTap: () {
          Get.toNamed(Routes.ADD_ANSWER);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14.0),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  offset: Offset(0, 2),
                  blurRadius: 4)
            ],
            gradient: LinearGradient(
                begin: Alignment(6.123234262925839e-17, 1),
                end: Alignment(-1, 6.123234262925839e-17),
                colors: [
                  Color.fromRGBO(7, 50, 86, 1),
                  Color.fromRGBO(2, 64, 114, 0.86739581823349),
                  Color.fromRGBO(0, 69, 127, 0.8100000023841858)
                ]),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Icon(
                Icons.edit_outlined,
                color: Colors.white,
              ),
              widthSpace10,
              Text(
                "Add An Answer",
                style: muilshBold18.copyWith(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildAskExpertTab() {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          heightSpace5,
          buildQuestion(),
          heightSpace5,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Divider(
              color: Color(0xffF4F1F1),
              thickness: 2,
            ),
          ),
          heightSpace5,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              children: [
                circleImage(
                  'expert',
                  size: 40,
                ),
                widthSpace10,
                Text(
                  'DR JOSHI',
                  style: muilshBold18.copyWith(
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                const Text(
                  "19 Hours Ago",
                  style: greyOutText,
                ),
              ],
            ),
          ),
          heightSpace5,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "A.",
                  style: QnAStyle,
                ),
                widthSpace5,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Get.width * 0.85,
                      child: const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sollicitudin viverra id porttitor mi sagittis velit vel metus. Sapien, nunc magna porttitor elementum sit justo, euismod rhoncus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                        style: AStyle,
                      ),
                    ),
                    heightSpace10,
                    SizedBox(
                      width: Get.width * 0.85,
                      child: Row(
                        children: [
                          Spacer(),
                          Text(
                            '3',
                            style: muilsh70016.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          getImage(
                            'like',
                            width: 24,
                            height: 24,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    heightSpace10,
                  ],
                ),
              ],
            ),
          ),
          buildHeader('Expert Answered'),
          heightSpace5,
        ],
      ),
    );
  }

  Container buildQuestion() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Q.",
            style: QnAStyle,
          ),
          widthSpace5,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: Get.width * 0.85,
                child: const Text(
                  'My 5 months old shihtzu is drinking double water than usual.\nMy 5 months old shihtzu is drinking double water than usual.\nMy 5 months old shihtzu is drinking double water than usual. My 5 months old shihtzu is drinking double water than usual.',
                  style: QStyle,
                ),
              ),
              heightSpace10,
              SizedBox(
                width: Get.width * 0.85,
                child: Row(
                  children: [
                    getImage(
                      'pencil',
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                    widthSpace5,
                    Text(
                      'Answer',
                      style: textInfo.copyWith(
                        color: Color(0xff545252),
                      ),
                    ),
                    Spacer(),
                    getImage(
                      'share',
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Share',
                      style: textInfo.copyWith(
                        color: Color(0xff545252),
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                  ],
                ),
              ),
              heightSpace10,
            ],
          ),
        ],
      ),
    );
  }

  Card buildHeader(String title) {
    return Card(
      elevation: 2,
      color: const Color(0xffE0F3FF),
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: textInfo,
            ),
            getImage(
              'qa',
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
