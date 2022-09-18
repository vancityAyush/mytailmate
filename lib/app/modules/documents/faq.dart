import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/documents/document_controller.dart';
import 'package:mytailmate/app/modules/documents/widgets/app_bar.dart';
import 'package:mytailmate/app/modules/documents/widgets/bordered_container.dart';

import '../../theme/app_base_style.dart';

class FAQView extends GetView<DocumentController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DocumentController());
    return Scaffold(
        appBar: myBar("Frequently Asked Questions"),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              heightSpace20,
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "   FREQUENTLY ASKED QUESTIONS",
                  style: TextStyle(
                    color: Color(0xff2E2A2A),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              heightSpace5,
              BorderedContainer(
                child: RichText(
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
              ),
              heightSpace30,
              Row(
                children: [
                  //Accept Button
                  widthSpace30,
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 40),
                        primary: const Color(0xff033F63),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      child: const Text(
                        "ACCEPT",
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  widthSpace20,
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 40),
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      child: const Text(
                        "DECLINE",
                        style: TextStyle(
                          color: Color(0xffCAC6C6),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  widthSpace30,
                ],
              )
            ],
          ),
        ));
  }
}
