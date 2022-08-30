import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/modules/apresentacao/apresentacao_page.dart';
import 'package:mytailmate/app/modules/controller/controller_page.dart';
import 'package:mytailmate/app/modules/data/data_page.dart';
import 'package:mytailmate/app/modules/estrutura/estrutura_page.dart';
import 'package:mytailmate/app/modules/getx/getx_page.dart';
import 'package:mytailmate/app/modules/home/home_controller.dart';
import 'package:mytailmate/app/modules/home/widgets/custom_drawer_button_widget.dart';
import 'package:mytailmate/app/modules/home/widgets/custom_drawer_widget.dart';
import 'package:mytailmate/app/modules/model/model_page.dart';
import 'package:mytailmate/app/modules/provider/providar_page.dart';
import 'package:mytailmate/app/modules/repository/repository_page.dart';
import 'package:mytailmate/app/modules/routes/routes_pages.dart';
import 'package:mytailmate/app/modules/tutorials/tutorials_page.dart';
import 'package:mytailmate/app/modules/ui/ui_page.dart';
import 'package:mytailmate/app/widgets/custom_button_language_widget.dart';

class HomePage extends GetView {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final HomeController controller = Get.put(HomeController());

  final List<Widget> screens = [
    ApresentacaoPage(),
    EstruturaPage(),
    GetXPage(),
    DataPage(),
    ProviderPage(),
    ModelPage(),
    RepositoryPage(),
    ControllerPage(),
    UiPage(),
    RoutesPage(), //add translations
    TutorialsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    print('> home - build() : GetX , oi = ' + 'GetX'.tr + ' , ' + 'oi'.tr);
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      body: Stack(
        children: <Widget>[
          SafeArea(
              child: Obx(
            () => Container(
                color: Colors.red,
                padding: EdgeInsets.all(0),
                child: this.screens[controller.screen]),
          )),
          // SafeArea(
          //     child: Obx(() => Container(
          //           color: Colors.red,
          //           padding: EdgeInsets.all(0),
          //           child: this.screens[controller.screen],
          //         )),
          //         ),
          Positioned(
            top: 8,
            left: 5,
            child: SafeArea(
              child: CustomDrawerButtonWidget(
                  callback: () => _scaffoldKey.currentState?.openDrawer()),
            ),
          ),
          Positioned(
            top: 8,
            right: 5,
            child: SafeArea(child: CustomSelectLanguageWidget()),
          ),
        ],
      ),
    );
  }
}
