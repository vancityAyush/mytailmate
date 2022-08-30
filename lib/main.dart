import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mytailmate/app/modules/splash/splash_page.dart';
import 'package:mytailmate/app/routes/app_pages.dart';
import 'package:mytailmate/app/theme/app_theme.dart';
import 'package:mytailmate/app/translations/app_translations.dart';

void main() async {
  await GetStorage.init();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    home: SplashPage(),

    translationsKeys: AppTranslation.translations,
    // translations: AppTranslation(),
    // translationsKeys: AppTranslation().keys,

    getPages: AppPages.pages,
    theme: appThemeData,
    // locale: Locale('es', 'MX'),
    locale: Locale('en', 'US'),
    fallbackLocale: Locale('en', 'US'),

    defaultTransition: Transition.rightToLeftWithFade,
  ));
}
