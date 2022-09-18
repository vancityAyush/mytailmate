import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:im_stepper/stepper.dart';
import 'package:mytailmate/app/modules/shopping/checkout_controller.dart';
import 'package:mytailmate/app/theme/app_base_style.dart';
import 'package:mytailmate/app/theme/app_colors.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';

import '../../models/product_model.dart';
import '../../widgets/widget_helper.dart';

class CheckoutPage extends GetView<CheckoutController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CheckoutController());
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          'Add a Customer',
          style: muilsh70016.copyWith(
            color: Colors.white,
          ),
        ),
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Obx(
            () => NumberStepper(
              numbers: const [
                1,
                2,
                3,
              ],
              lineColor: Colors.white,
              numberStyle: muilsh70016.copyWith(
                color: primaryColor,
              ),
              activeStep: controller.tab.value,
              stepColor: Colors.white,
              activeStepColor: Color(0xff89D3FF),
              enableNextPreviousButtons: false,
              onStepReached: (index) {
                controller.tab.value = index;
              },
            ),
          ),
          heightSpace20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Address",
                style: muilsh600.copyWith(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                "Order Summary ",
                style: muilsh600.copyWith(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                "Payment",
                style: muilsh600.copyWith(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Obx(
            () => buildCard(controller.tab.value),
          ),
        ],
      ),
      bottomSheet: Obx(
        () => buildBottom(controller.tab.value),
      ),
    );
  }

  Widget buildBottom(int index) {
    if (index == 0) {
      return buildDeliveryBottom();
    } else if (index == 1) {
      return buildOrderSummaryBottom();
    } else {
      return buildOrderSummaryBottom();
    }
  }

  Widget buildOrderSummaryBottom() {
    return Container(
      height: 50,
      color: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "₹ 1555\n",
                    style: muilshBold18.copyWith(
                      color: primaryColor,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: "View price details",
                    style: muilsh500.copyWith(
                      color: primaryColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                controller.tab.value++;
                if (controller.tab.value == 3) {
                  controller.tab.value = 0;
                  Get.dialog(
                    Card(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 100,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(38),
                      ),
                      child: Container(
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            getImageGif('dog_running'),
                            Text(
                              "Order Successful",
                              style: muilshBold18.copyWith(color: Colors.black),
                            ),
                            Text(
                              "Your order # 6578345 is successfully placed.",
                              style: muilsh500.copyWith(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              },
              color: primaryColor,
              child: Text(
                "Continue",
                style: muilshBold18.copyWith(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDeliveryBottom() {
    return GestureDetector(
      onTap: () {
        controller.tab.value++;
      },
      child: Container(
        width: double.infinity,
        height: 40,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        decoration: const BoxDecoration(
          color: darkBlueColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(2),
            topRight: Radius.circular(2),
          ),
        ),
        child: Text(
          "Delivery Here",
          textAlign: TextAlign.center,
          style: muilshBold18.copyWith(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget buildCartItem(Product product) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(0, 0),
              blurRadius: 4)
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          getImage(
            product.img,
            height: 80,
            fit: BoxFit.contain,
          ),
          Container(
            width: Get.width * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: muilsh500.copyWith(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                heightSpace10,
                Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: Text(
                    "Qty:5",
                    style: muilsh500.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Price ₹ ${product.price}",
                        style: muilsh600.copyWith(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.blue,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: "  ₹ ${product.price}\n",
                        style: muilsh600.copyWith(
                          color: Color(0xFF074C75),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(int index) {
    switch (index) {
      case 0:
        return Expanded(
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(38),
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "+ Add Address",
                    style: muilshBold18.copyWith(color: primaryColor),
                  ),
                  heightSpace20,
                  buildAddressBox(),
                  heightSpace20,
                  buildAddressBox(),
                  heightSpace20,
                  buildAddressBox(),
                ],
              ),
            ),
          ),
        );
      case 1:
        return Expanded(
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(38),
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deliver To ",
                    style: muilshBold18.copyWith(color: primaryColor),
                  ),
                  heightSpace20,
                  Container(
                    width: Get.width,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 0),
                            blurRadius: 2)
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              const WidgetSpan(
                                child: Icon(
                                  Icons.location_on_outlined,
                                  color: primaryColor,
                                ),
                              ),
                              TextSpan(
                                text: "Home",
                                style: muilsh500.copyWith(
                                  color: primaryColor,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        heightSpace10,
                        RichText(
                          text: TextSpan(
                            children: [
                              const WidgetSpan(
                                child: Icon(
                                  Icons.person,
                                  color: primaryColor,
                                ),
                              ),
                              TextSpan(
                                text: "John Doe",
                                style: muilsh500.copyWith(
                                  color: primaryColor,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "House 1, Road 1, Block A, Banani, Dhaka",
                          style: muilsh600.copyWith(color: primaryColor),
                        ),
                      ],
                    ),
                  ),
                  heightSpace20,
                  buildCartItem(controller.product),
                  heightSpace20,
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 10.0,
                    ),
                    width: double.infinity,
                    color: Color.fromRGBO(7, 76, 117, 1),
                    child: Text(
                      "Price Details",
                      style: muilsh500.copyWith(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  heightSpace5,
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 0),
                            blurRadius: 2)
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    child: GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      childAspectRatio: 8,
                      children: [
                        Text(
                          "MRP(4 Items",
                          style: muilsh70016.copyWith(
                            color: primaryColor,
                          ),
                        ),
                        Text(
                          "₹ 1700",
                          textAlign: TextAlign.end,
                          style: muilsh70016.copyWith(
                            color: primaryColor,
                          ),
                        ),
                        Text(
                          "Discount",
                          style: muilsh500.copyWith(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "- ₹ 200",
                          textAlign: TextAlign.end,
                          style: muilsh70016.copyWith(
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          "Delivery Charges",
                          style: muilsh500.copyWith(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          " ₹ 55",
                          textAlign: TextAlign.end,
                          style: muilsh70016.copyWith(
                            color: primaryColor,
                          ),
                        ),
                        Text(
                          "Promo Code",
                          style: muilsh500.copyWith(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          " ₹ 0",
                          textAlign: TextAlign.end,
                          style: muilsh70016.copyWith(
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  heightSpace10,
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 0),
                            blurRadius: 2)
                      ],
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Total Amount",
                          style: muilsh70016.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "₹ 1555",
                          style: muilsh70016.copyWith(
                            color: primaryColor,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      case 2:
        return Expanded(
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(38),
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Get.width,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 0),
                            blurRadius: 2)
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              const WidgetSpan(
                                child: Icon(
                                  Icons.location_on_outlined,
                                  color: primaryColor,
                                ),
                              ),
                              TextSpan(
                                text: "Home",
                                style: muilsh500.copyWith(
                                  color: primaryColor,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        heightSpace10,
                        RichText(
                          text: TextSpan(
                            children: [
                              const WidgetSpan(
                                child: Icon(
                                  Icons.person,
                                  color: primaryColor,
                                ),
                              ),
                              TextSpan(
                                text: "John Doe",
                                style: muilsh500.copyWith(
                                  color: primaryColor,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "House 1, Road 1, Block A, Banani, Dhaka",
                          style: muilsh600.copyWith(color: primaryColor),
                        ),
                      ],
                    ),
                  ),
                  heightSpace20,
                  Text(
                    "Payment",
                    style: muilshBold18.copyWith(color: Colors.black),
                  ),
                  heightSpace30,
                  ListTile(
                    leading: Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {
                        // controller.payment = value;
                      },
                      activeColor: primaryColor,
                    ),
                    title: Text(
                      "Cash on Delivery",
                      style: muilsh500.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Radio(
                      value: 1,
                      groupValue: 2,
                      onChanged: (value) {
                        // controller.payment = value;
                      },
                      activeColor: primaryColor,
                    ),
                    title: Text(
                      "Pay Online",
                      style: muilsh500.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      default:
        return buildAddressBox();
    }
  }

  Widget buildAddressBox() {
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (value) {},
          shape: CircleBorder(),
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.all(primaryColor),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 0),
                    blurRadius: 2)
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      const WidgetSpan(
                        child: Icon(
                          Icons.location_on_outlined,
                          color: primaryColor,
                        ),
                      ),
                      TextSpan(
                        text: "Home",
                        style: muilsh500.copyWith(
                          color: primaryColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                heightSpace10,
                RichText(
                  text: TextSpan(
                    children: [
                      const WidgetSpan(
                        child: Icon(
                          Icons.person,
                          color: primaryColor,
                        ),
                      ),
                      TextSpan(
                        text: "John Doe",
                        style: muilsh500.copyWith(
                          color: primaryColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "House 1, Road 1, Block A, Banani, Dhaka",
                  style: muilsh600.copyWith(color: primaryColor),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
