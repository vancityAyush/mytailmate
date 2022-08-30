import 'package:flutter/material.dart';

class CustomDrawerButtonWidget extends GestureDetector {
  final VoidCallback callback;

  CustomDrawerButtonWidget({required this.callback});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: this.callback,
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/rocket_minimal.png'))),
        ),
      ),
    );
  }
}
