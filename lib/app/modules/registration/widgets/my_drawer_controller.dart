import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:mytailmate/app/routes/app_pages.dart';

/**
 * Created by : Ayush Kumar
 * Created on : 03-09-2022
 */
const TITLE = "title";
const ICON = "icon";
const CLICK = 'click';

class MyDrawerController extends GetxController {
  List<Map<String, String>> menuItems = [
    {
      'title': 'Community',
      'icon': 'community',
      CLICK: Routes.COMMUNITY,
    },
    {
      'title': 'Pet Service',
      'icon': 'pet_service',
      CLICK: Routes.PETSERVICE,
    },
    {
      'title': 'Medical Records',
      'icon': 'medical_records',
      CLICK: Routes.MEDICALRECORDS,
    },
    {
      'title': 'Shop With Us',
      'icon': 'shop_with_us',
    },
    {
      'title': 'My Order',
      'icon': 'my_order',
    },
    {
      'title': 'Support',
      'icon': 'support',
    },
    {
      'title': 'About Us',
      'icon': 'about_us',
      CLICK: Routes.ABOUT_US,
    },
    {
      'title': 'Notifications',
      'icon': 'notifications',
    },
    {
      'title': 'Return Policy',
      'icon': 'return_policy',
    },
    {
      'title': 'Share',
      'icon': 'share',
      CLICK: Routes.FAQ,
    },
    {
      'title': 'Terms & Conditions',
      'icon': 'terms',
      CLICK: Routes.TERMS_CONDITIONS,
    },
    {
      'title': 'Privacy Policy',
      'icon': 'privacy',
      CLICK: Routes.PRIVACY_POLICY,
    },
    {
      'title': 'Logout',
      'icon': 'logout',
    },
  ];
}
