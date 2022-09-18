import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mytailmate/app/modules/home/landing_page.dart';
import 'package:mytailmate/app/routes/app_pages.dart';
import 'package:mytailmate/app/theme/app_theme.dart';

void main() async {
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.INITIAL,
      home: LandingPage(),
      getPages: AppPages.pages,
      theme: appThemeData,
      locale: const Locale('en', 'US'),
      defaultTransition: Transition.rightToLeftWithFade,
    ),
  );
}
