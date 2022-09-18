import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/community/community_controller.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';

class AddAnswerPage extends GetView<CommunityController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  final CommunityController controller = Get.put(CommunityController());

  AddAnswerPage({Key? key}) : super(key: key);

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
          'Add An Answer',
          style: appBarText.copyWith(fontSize: 15),
        ),
        backgroundColor: Color(0xffE0F3FF),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Q.",
                  style: QnAStyle,
                ),
                widthSpace5,
                SizedBox(
                  width: Get.width * 0.85,
                  child: const Text(
                    'My 5 months old shihtzu is drinking double water than usual.\nMy 5 months old shihtzu is drinking double water than usual.\nMy 5 months old shihtzu is drinking double water than usual. My 5 months old shihtzu is drinking double water than usual.',
                    style: QStyle,
                  ),
                ),
              ],
            ),
            heightSpace20,
            Expanded(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
