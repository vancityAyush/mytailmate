import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/community/community_controller.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_colors.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';

class AskQuestionPage extends GetView<CommunityController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  final CommunityController controller = Get.put(CommunityController());

  AskQuestionPage({Key? key}) : super(key: key);

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
          'Ask a Question',
          style: appBarText.copyWith(fontSize: 15),
        ),
        backgroundColor: Color(0xffE0F3FF),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Choose An Option",
                  style: muilsh70016.copyWith(
                    color: primaryColor,
                  ),
                ),
                widthSpace30,
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffE0F3FF),
                      borderRadius: BorderRadius.circular(90),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DropdownButtonHideUnderline(
                          child: DropdownButton<int>(
                            items: [],
                            onChanged: (value) {},
                            hint: Text(
                              "Health",
                              style: muilsh70016.copyWith(
                                color: primaryColor,
                                fontSize: 18,
                              ),
                            ),
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            heightSpace20,
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(0, 0),
                        blurRadius: 2),
                  ],
                ),
                child: TextField(
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  minLines: null,
                  decoration: InputDecoration(
                    hintText: "Write Your Question Here",
                    hintStyle: muilsh600.copyWith(
                      color: Color(0xffBFB2B2),
                      fontSize: 18,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                  ),
                ),
              ),
            ),
            heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Your Identity Will Not Be Revelead",
                  style: muilsh70016.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 2),
                          blurRadius: 4)
                    ],
                    gradient: const LinearGradient(
                        begin: Alignment(6.123234262925839e-17, 1),
                        end: Alignment(-1, 6.123234262925839e-17),
                        colors: [
                          Color.fromRGBO(7, 50, 86, 1),
                          Color.fromRGBO(2, 64, 114, 0.86739581823349),
                          Color.fromRGBO(0, 69, 127, 0.8100000023841858)
                        ]),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "Post",
                          style: muilsh70016.copyWith(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        widthSpace10,
                        const Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
