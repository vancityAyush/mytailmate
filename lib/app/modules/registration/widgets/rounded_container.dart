/**
 * Created by : Ayush Kumar
 * Created on : 31-08-2022
 */
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets? margin;
  final Color? color;
  final bool showBorder;
  const RoundedContainer({
    Key? key,
    required this.children,
    this.color,
    this.margin,
    this.showBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: !showBorder
              ? null
              : [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4),
                ]),
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }
}
