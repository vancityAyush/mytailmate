import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/community/community_controller.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../theme/app_base_style.dart';

class ExpertAdviceVideoPage extends GetView<CommunityController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  ExpertAdviceVideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CommunityController());
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
          'Coat Care For Your Dog',
          style: appBarText,
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            YoutubePlayer(
              controller: controller.youtubePlayerController,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: Color(0xff074C75),
              child: Column(
                children: [
                  Text(
                    'Coat Care For Your Dog',
                    style: muilshBold18.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  heightSpace10,
                  Row(
                    children: [
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                      ),
                      widthSpace5,
                      Text(
                        "Like A Video",
                        style: muilsh600.copyWith(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.share_outlined,
                        color: Colors.white,
                      ),
                      widthSpace5,
                      Text(
                        "Share",
                        style: muilsh600.copyWith(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
