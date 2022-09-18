import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/documents/document_controller.dart';
import 'package:mytailmate/app/modules/documents/widgets/app_bar.dart';
import 'package:mytailmate/app/modules/documents/widgets/bordered_container.dart';

import '../../theme/app_base_style.dart';
import '../../widgets/widget_helper.dart';

class PrivacyView extends GetView<DocumentController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DocumentController());
    return Scaffold(
        appBar: myBar("Privacy Policy"),
        body: Obx(
          () => Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                heightSpace20,
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.Overview.value = true;
                        },
                        child: Container(
                          width: Get.width * 0.45,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: controller.Overview.value
                                  ? Color(0xFF033F63)
                                  : Color(0xffF6F6F6),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Text(
                            'Human-Friendly',
                            style: TextStyle(
                                color: controller.Overview.value
                                    ? Colors.white
                                    : Color(0xff57574A),
                                height: 1.5,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.Overview.value = false;
                        },
                        child: Container(
                          width: Get.width * 0.45,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: !controller.Overview.value
                                  ? Color(0xFF033F63)
                                  : Color(0xffF6F6F6),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Text(
                            'Overview',
                            style: TextStyle(
                                color: !controller.Overview.value
                                    ? Colors.white
                                    : Color(0xff57574A),
                                height: 1.5,
                                fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                heightSpace20,
                BorderedContainer(
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        color: Color(0xff2E2A2A),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: controller.Overview.value
                              ? 'We are committed to protecting your privacy and developing technology that gives you the most powerful and safe online experience. This Statement of Privacy applies to the mytailmate.com and mytailmate and governs data collection and usage. By using the mytailmate.com website, you consent to the data practices described in this statement.'
                              : 'We are committed to protecting your privacy and developing technology that gives you the most powerful and safe online experience. This Statement of Privacy applies to the mytailmate.com and mytailmate and governs data collection and usage. By using the mytailmate.com website, you consent to the data practices described in this statement.',
                        ),
                      ],
                    ),
                  ),
                ),
                heightSpace50,
                getImage(
                  "my_tail_mate",
                  width: Get.width * 0.5,
                ),
                heightSpace30,
              ],
            ),
          ),
        ));
  }
}
