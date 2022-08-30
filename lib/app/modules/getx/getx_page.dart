import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';
import 'package:mytailmate/app/widgets/custom_image_container._widget.dart';
import 'package:mytailmate/app/widgets/custom_title_widget.dart';
import 'package:mytailmate/app/widgets/previous_next_widget.dart';

class GetXPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTitleWidget(
                        title: 'GetX',
                      ),
                      Text(
                        'getx_The_focus_of_GetX_is_to_have_greater'.tr,
                        style: textContent,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 350,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/benchmark.png'))),
                      ),
                      Text(
                        'getx_Organization_allowing_the_complete_decoupling_of'
                            .tr,
                        style: textContent,
                      ),
                      Text('getx_Getx_has_the_power_to_reconstruct_only'.tr,
                          style: textContent),
                      Text(
                        'getx_Lets_go_to_a_first_example_of_the_application'.tr,
                        style: textContent,
                      ),
                      Text(
                        'getx_We_will_use_in_this_example_only_the_main_file'
                            .tr,
                        style: textContent,
                      ),
                      CustomImageContainerWidget(
                        urlImage: 'assets/images/main_count.png',
                      ),
                      Text(
                        'getx_After_that_we_will_create_our_controller_class'
                            .tr,
                        style: textContent,
                      ),
                      CustomImageContainerWidget(
                          urlImage: 'assets/images/controller_counter.png'),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                          'getx_GetxController_is_responsible_for_providing_us_with',
                          style: textContent,
                        ),
                      ),
                      Text(
                        'getx_With_GetX_we_can_extend_the_GetxController_class'
                            .tr,
                        style: textContent,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                          'getx_But_and_now_If_final_can_only'.tr,
                          style: textContent,
                        ),
                      ),
                      Text(
                        'getx_When_creating_your_variable_as_an_observable'.tr,
                        style: textContent,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                          'getx_In_the_case_of_our_Lists_it_is_not'.tr,
                          style: textContent,
                        ),
                      ),
                      Text(
                        'getx_We_go_to_the_Stateless_class_responsible'.tr,
                        style: textContent,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: CustomImageContainerWidget(
                            urlImage: 'assets/images/page_counter.png'),
                      ),
                      Text(
                        'getx_Well_this_is_a_basic_widget_we'.tr,
                        style: textContent,
                      ),
                      CustomNextPrevious()
                    ]))));
  }
}
