import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class IntroController extends GetxController {
  static IntroController get to => Get.find();
  static PageController pageController = PageController(initialPage: 0);

  List<String> topics = [
    'Home'.tr,
    'Structure'.tr,
    'GetX'.tr,
    'Data'.tr,
    'Provider'.tr,
    'Model'.tr,
    'Repository'.tr,
    'Controller'.tr,
    'Bindings'.tr,
    'UI'.tr,
    'Rotas'.tr,
    'Translations'.tr,
    'Tutoriais'.tr,
  ];
  final box = GetStorage();

  final _themeIsDark = false.obs;
  get themeIsDark => this._themeIsDark.value;
  set themeIsDark(value) => this._themeIsDark.value = value;

  void refreshTopics() {
    topics = [
      'Home'.tr,
      'Structure'.tr,
      'GetX'.tr,
      'Data'.tr,
      'Provider'.tr,
      'Model'.tr,
      'Repository'.tr,
      'Controller'.tr,
      'Bindings'.tr,
      'UI'.tr,
      'Rotas'.tr,
      'Translations'.tr,
      'Tutoriais'.tr,
    ];
  }

  @override
  onInit() {
    box.writeIfNull('key', false);
    this.themeIsDark = box.read('key');
  }

  @override
  void onReady() {
    changeTheme();
    super.onReady();
  }

  final _screen = 0.obs;
  get screen => this._screen.value;
  set screen(value) => this._screen.value = value;

  changeTheme() async {
    Get.changeTheme(
        this.themeIsDark == false ? ThemeData.light() : ThemeData.dark());
    box.write('key', this.themeIsDark);
    this.themeIsDark = !this.themeIsDark;
  }

  final _lang = 'en-US'.obs;
  String get lang => this._lang.value;
  set lang(value) => this._lang.value = value;

  changeLanguage(lang) {
    this.lang = lang;
    if (lang == 'pt-BR') {
      Get.updateLocale(Locale('pt', 'BR'));
    } else if (lang == 'en-US') {
      Get.updateLocale(Locale('en', 'US'));
    } else if (lang == 'es-MX') {
      Get.updateLocale(Locale('es', 'MX'));
    }
    refreshTopics();
    print('> local , lang = ${Get.locale} , $lang');
    print('>> GetX , oi = ' + 'GetX'.tr + ' , ' + 'oi'.tr);
  }

  nextPage() => this.screen < topics.length ? this.screen++ : null;
  previousPage() => this.screen > 0 ? this.screen-- : null;
}
