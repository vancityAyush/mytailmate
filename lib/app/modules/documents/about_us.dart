import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/documents/document_controller.dart';
import 'package:mytailmate/app/modules/documents/widgets/app_bar.dart';
import 'package:mytailmate/app/modules/documents/widgets/bordered_container.dart';

import '../../theme/app_base_style.dart';
import '../../widgets/widget_helper.dart';

class AboutUsView extends GetView<DocumentController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DocumentController());
    return Scaffold(
      appBar: myBar("About us"),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            heightSpace20,
            BorderedContainer(
              child: Column(
                children: [
                  getImage(
                    "my_tail_mate",
                    width: Get.width * 0.5,
                  ),
                  heightSpace20,
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Color(0xff2E2A2A),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                            text:
                                """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non hendrerit faucibus diam vitae id.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non hendrerit faucibus diam vitae id.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non hendrerit faucibus diam vitae id.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non hendrerit faucibus diam vitae id.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non hendrerit faucibus diam vitae id.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non hendrerit faucibus diam vitae id.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non hendrerit faucibus diam vitae id.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non hendrerit faucibus diam vitae id."""),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            heightSpace50,
          ],
        ),
      ),
    );
  }
}
