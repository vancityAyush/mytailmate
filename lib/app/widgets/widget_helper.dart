import 'package:flutter/material.dart';

/**
 * Created by : Ayush Kumar
 * Created on : 29-08-2022
 */
Widget getImage(String name,
    {String extension = 'png', double? height, double? width}) {
  return Image.asset(
    'assets/images/$name.$extension',
    fit: BoxFit.contain,
    height: height,
    width: width,
  );
}
