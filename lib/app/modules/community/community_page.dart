import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/community/community_controller.dart';
import 'package:mytailmate/app/modules/community/widgets/community_body.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';

class CommunityPage extends GetView<CommunityController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  final CommunityController controller = Get.put(CommunityController());

  CommunityPage({Key? key}) : super(key: key);

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
          'Community',
          style: appBarText,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: CommunityBody(),
    );
  }
}
