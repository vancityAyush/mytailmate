/**
 * Created by : Ayush Kumar
 * Created on : 14-09-2022
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

AppBar myBar(String text) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(
      text,
      style: const TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Mulish',
        fontSize: 22,
        fontWeight: FontWeight.w700,
      ),
    ),
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      onPressed: () {
        Get.back();
      },
    ),
  );
}
