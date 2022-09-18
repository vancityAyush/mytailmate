import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CommunityController extends GetxController {
  static CommunityController get to => Get.find();
  CarouselController carouselController = CarouselController();
  RxInt currentIndex = 0.obs;

  YoutubePlayerController youtubePlayerController = YoutubePlayerController(
    initialVideoId: 'dQw4w9WgXcQ',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  PageController pageController = PageController(viewportFraction: 1);
  final box = GetStorage();

  final _themeIsDark = false.obs;
  get themeIsDark => this._themeIsDark.value;
  set themeIsDark(value) => this._themeIsDark.value = value;

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

  previousPage() => this.screen > 0 ? this.screen-- : null;
}
