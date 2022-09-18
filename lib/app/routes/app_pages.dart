import 'package:get/get.dart';
import 'package:mytailmate/app/modules/community/add_an_answer.dart';
import 'package:mytailmate/app/modules/community/ask_question_page.dart';
import 'package:mytailmate/app/modules/community/ask_the_expert_page.dart';
import 'package:mytailmate/app/modules/community/community_page.dart';
import 'package:mytailmate/app/modules/community/expert_advice_page.dart';
import 'package:mytailmate/app/modules/community/expert_advice_video_page.dart';
import 'package:mytailmate/app/modules/documents/about_us.dart';
import 'package:mytailmate/app/modules/documents/faq.dart';
import 'package:mytailmate/app/modules/documents/privacy_view.dart';
import 'package:mytailmate/app/modules/documents/terms_and_condition.dart';
import 'package:mytailmate/app/modules/home/landing_page.dart';
import 'package:mytailmate/app/modules/intro/intro_page.dart';
import 'package:mytailmate/app/modules/medical_records/medical_records_page.dart';
import 'package:mytailmate/app/modules/profile/profile_page.dart';
import 'package:mytailmate/app/modules/registration/otp_page.dart';
import 'package:mytailmate/app/modules/registration/pet_selection.dart';
import 'package:mytailmate/app/modules/registration/start_journey_page.dart';
import 'package:mytailmate/app/modules/shopping/cart_page.dart';
import 'package:mytailmate/app/modules/shopping/checkout_page.dart';
import 'package:mytailmate/app/modules/shopping/product_detail_page.dart';
import 'package:mytailmate/app/modules/shopping/products_page.dart';
import 'package:mytailmate/app/modules/shopping/shop_page.dart';
import 'package:mytailmate/app/modules/splash/splash_page.dart';

import '../modules/pet_service/pet_service_page.dart';
import '../modules/registration/login_page.dart';
import '../modules/registration/signup_page.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => SplashPage(),
    ),
    GetPage(
      name: Routes.INTRO,
      page: () => IntroPage(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => LandingPage(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
    ),
    GetPage(
      name: Routes.OTP,
      page: () => OtpPage(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: Routes.START,
      page: () => const StartJourneyPage(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: Routes.PETSELECTION,
      page: () => const PetSelectionPage(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => SignUpPage(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: Routes.COMMUNITY,
      page: () => CommunityPage(),
    ),
    GetPage(
      name: Routes.MEDICALRECORDS,
      page: () => MedicalRecordsPage(),
    ),
    GetPage(
      name: Routes.PETSERVICE,
      page: () => PetServicePage(),
    ),
    GetPage(
      name: Routes.SHOPWITHUS,
      page: () => ShopPage(),
    ),
    GetPage(
      name: Routes.PRODUCT,
      page: () => ProductsPage(),
    ),
    GetPage(
      name: Routes.CART,
      page: () => CartPage(),
    ),
    GetPage(
      name: Routes.PRODUCT_DETAIL,
      page: () => ProductDetailPage(),
    ),
    GetPage(
      name: Routes.ABOUT_US,
      page: () => AboutUsView(),
    ),
    GetPage(
      name: Routes.PRIVACY_POLICY,
      page: () => PrivacyView(),
    ),
    GetPage(
      name: Routes.TERMS_CONDITIONS,
      page: () => TermsConditionView(),
    ),
    GetPage(
      name: Routes.FAQ,
      page: () => FAQView(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => ProfilePage(),
    ),
    GetPage(
      name: Routes.ASK_QUESTION,
      page: () => AskQuestionPage(),
    ),
    GetPage(
      name: Routes.ADD_ANSWER,
      page: () => AddAnswerPage(),
    ),
    GetPage(
      name: Routes.ASK_EXPERT,
      page: () => AskTheExpertsPage(),
    ),
    GetPage(
      name: Routes.EXPERT_ADIVCE,
      page: () => ExpertAdvicePage(),
    ),
    GetPage(
      name: Routes.EXPERT_ADVICE_VIDEO,
      page: () => ExpertAdviceVideoPage(),
    ),
    GetPage(
      name: Routes.CHECKOUT,
      page: () => CheckoutPage(),
    ),
  ];
}
