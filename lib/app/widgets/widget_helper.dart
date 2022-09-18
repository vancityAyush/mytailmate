import 'package:flutter/material.dart';
import 'package:mytailmate/app/theme/app_colors.dart';

/**
 * Created by : Ayush Kumar
 * Created on : 29-08-2022
 */
Widget getImage(String name,
    {String extension = 'png',
    double? height,
    double? width,
    BoxFit? fit,
    Color? color}) {
  return Image.asset(
    'assets/images/$name.$extension',
    fit: fit ?? BoxFit.contain,
    height: height,
    width: width,
    color: color,
  );
}

Container buildSearch() {
  return Container(
    width: double.infinity,
    height: 46,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 0),
            blurRadius: 2)
      ],
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
    child: TextField(
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          color: primaryColor,
        ),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

Widget getImageGif(String name, {double? height, double? width}) {
  return Image.asset(
    'assets/gif/$name.gif',
    fit: BoxFit.contain,
    height: height,
    width: width,
  );
}

Widget getCircleImage(String img, {double? size}) {
  return CircleAvatar(
    radius: size,
    backgroundColor: Colors.white,
    backgroundImage: AssetImage(
      "assets/images/$img.png",
    ),
  );
}

Widget getCircularImage(String name,
    {String extension = 'png', double? size, Color? color}) {
  return CircleAvatar(
    backgroundColor: color ?? Colors.white,
    radius: size,
    child: Image.asset(
      'assets/images/$name.$extension',
      fit: BoxFit.contain,
      height: size,
      width: size,
      alignment: Alignment.center,
      color: color ?? Colors.white,
      colorBlendMode: BlendMode.darken,
    ),
  );
}

Widget circleImage(String img, {double size = 150.0}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 3,
        ),
      ],
    ),
    child: CircleAvatar(
      radius: size / 2,
      backgroundColor: Colors.white,
      backgroundImage: AssetImage('assets/images/$img.png'),
    ),
  );
}
