/**
 * Created by : Ayush Kumar
 * Created on : 30-08-2022
 */
import 'package:flutter/material.dart';
import 'package:mytailmate/app/theme/app_text_theme.dart';

class GradientButton extends StatelessWidget {
  String title;
  void Function() onPressed;
  GradientButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: double.infinity,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          width: double.infinity,
          height: 50,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            gradient: LinearGradient(
              begin: Alignment(6.123234262925839e-17, 1),
              end: Alignment(-1, 6.123234262925839e-17),
              colors: [
                Color.fromRGBO(3, 63, 99, 1),
                Color.fromRGBO(13, 95, 144, 1)
              ],
            ),
          ),
          child: Text(
            title,
            style: buttonStyle,
          ),
        ),
      ),
    );
  }
}
