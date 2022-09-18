import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/medical_records/medical_records_controller.dart';
import 'package:mytailmate/app/modules/medical_records/widgets/medical_records_body.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_colors.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';
import 'package:mytailmate/app/widgets/widget_helper.dart';

class MedicalRecordsPage extends GetView<MedicalRecordsController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  final MedicalRecordsController controller =
      Get.put(MedicalRecordsController());

  MedicalRecordsPage({Key? key}) : super(key: key);

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
        title: const Text(
          'MedicalRecords',
          style: appBarText,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(
              children: [
                heightSpace10,
                circleImage('pluto', size: 30),
                Text(
                  "PLUTO",
                  style:
                      muilshBold18.copyWith(fontSize: 10, color: primaryColor),
                )
              ],
            ),
          )
        ],
      ),
      body: MedicalRecordsBody(),
    );
  }
}
