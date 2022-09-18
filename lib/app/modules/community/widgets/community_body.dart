/**
 * Created by : Ayush Kumar
 * Created on : 04-09-2022
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:mytailmate/app/modules/community/widgets/options_widgets.dart';
import 'package:mytailmate/app/modules/registration/widgets/rounded_box.dart';
import 'package:mytailmate/app/routes/app_pages.dart';
import 'package:mytailmate/app/theme/app_colors.dart';
import 'package:mytailmate/app/widgets/my_choice_chip.dart';
import 'package:mytailmate/app/widgets/widget_helper.dart';
import 'package:tab_container/tab_container.dart';

import '../../../theme/app_base_style.dart';
import '../../../theme/app_text_theme.dart';

class CommunityBody extends StatelessWidget {
  const CommunityBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabContainer(
      color: primaryColor,
      radius: 0,
      selectedTextStyle: muilsh70016,
      unselectedTextStyle: muilsh70016.copyWith(color: primaryColor),
      tabs: const [
        'Ask The Expert',
        'Expert Advice',
      ],
      children: [
        Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: buildAskExpertTab(),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.ASK_QUESTION);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
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
                      "Ask A Question",
                      style: muilshBold18.copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          child: buildExpertAdviceTab(),
        ),
      ],
    );
  }

  Container buildExpertAdviceTab() {
    return Container(
      color: const Color(0xffF5FAFD),
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xffF5FAFD),
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Personalized For Pluto By Expert Vets',
              style: muilsh70016.copyWith(
                color: primaryColor,
                fontSize: 16,
              ),
            ),
          ),
          heightSpace10,
          RoundedBox(
            radius: 10,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: muilsh70016.copyWith(
                  color: Colors.grey.shade400,
                ),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ),
          heightSpace10,
          OptionsWidget(
            title: 'Grooming',
            options: [
              {
                'title': 'Coat Care Guide',
                'img': 'grooming1',
                'num': '2888',
                'onTap': () {},
                'isVideo': true,
              },
              {
                'title': 'Getting starting with grooming',
                'img': 'grooming2',
                'num': '855',
                'onTap': () {},
              },
              {
                'title': 'Brushing your dog’s fur',
                'img': 'grooming3',
                'num': '564',
                'onTap': () {},
              },
            ],
          ),
          heightSpace20,
          OptionsWidget(
            title: 'Training',
            options: [
              {
                'title': 'Obedience training for puppies',
                'img': 'training1',
                'num': '2888',
                'onTap': () {},
                'isVideo': true,
              },
              {
                'title': 'Walking with your dog',
                'img': 'training2',
                'num': '855',
                'onTap': () {},
              },
              {
                'title': 'Clicker Training Guide',
                'img': 'training3',
                'num': '564',
                'onTap': () {},
                'isVideo': true,
              },
            ],
          ),
          heightSpace20,
          OptionsWidget(
            title: 'Lifestyle',
            options: [
              {
                'title': 'Monsoon care',
                'img': 'lifestyle1',
                'num': '2888',
                'onTap': () {},
                'isVideo': true,
              },
              {
                'title': 'Grass the root problem',
                'img': 'lifestyle2',
                'num': '855',
                'onTap': () {},
              },
              {
                'title': 'Hipccups in dogs',
                'img': 'lifestyle3',
                'num': '564',
                'onTap': () {},
                'isVideo': true,
              },
            ],
          ),
          heightSpace20,
          OptionsWidget(
            title: 'Healthcare',
            options: [
              {
                'title': 'lumps & Bumps',
                'img': 'healthcare1',
                'num': '2888',
                'onTap': () {},
              },
              {
                'title': 'Rabies: A General Guides',
                'img': 'healthcare2',
                'num': '855',
                'onTap': () {},
              },
              {
                'title': 'dental care',
                'img': 'healthcare3',
                'num': '564',
                'onTap': () {},
                'isVideo': true,
              },
            ],
          ),
          heightSpace20,
          OptionsWidget(
            title: 'Nutrition',
            options: [
              {
                'title': 'NUTRITION GUIDE FOR DOGS',
                'img': 'nutrition1',
                'num': '2888',
                'onTap': () {},
              },
              {
                'title': 'The vital Vitamins',
                'img': 'nutrition2',
                'num': '855',
                'onTap': () {},
                'isVideo': true,
              },
              {
                'title': 'Food to avoid',
                'img': 'nutrition3',
                'num': '564',
                'onTap': () {},
              },
            ],
          ),
          heightSpace20,
        ],
      ),
    );
  }

  Container buildAskExpertTab() {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyChoiceChip(
                title: 'Health',
              ),
              MyChoiceChip(
                title: 'Lifestyle',
              ),
              MyChoiceChip(
                title: 'Miscellaneous',
              ),
            ],
          ),
          heightSpace5,
          buildHeader("Here is a question for you"),
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
                    Text(
                      'Read More',
                      style: textInfo.copyWith(
                        color: Color(0xff1E8AF0),
                      ),
                    ),
                    heightSpace10,
                    SizedBox(
                      width: Get.width * 0.85,
                      child: Row(
                        children: [
                          Text(
                            '1 More Answer',
                            style: muilsh70016.copyWith(
                              color: Colors.black,
                            ),
                          ),
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
          buildQuestion(),
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
                  'My 5 months old shihtzu is drinking double water than usual.',
                  style: QStyle,
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed(Routes.ASK_EXPERT);
                },
                child: Text(
                  'Read More',
                  style: textInfo.copyWith(
                    color: Color(0xff1E8AF0),
                  ),
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
