/**
 * Created by : Ayush Kumar
 * Created on : 31-08-2022
 */
import 'package:flutter/material.dart';

class RoundedBox extends StatelessWidget {
  final Widget child;
  final double radius;
  const RoundedBox({Key? key, required this.child, this.radius = 90})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            blurRadius: 2.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
          )
        ],
      ),
      width: double.infinity,
      child: Center(child: child),
    );
  }
}
