/**
 * Created by : Ayush Kumar
 * Created on : 14-09-2022
 */
import 'package:flutter/material.dart';

class BorderedContainer extends StatelessWidget {
  final Widget child;
  const BorderedContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 24),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(4)),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                offset: Offset(0, 0),
                blurRadius: 4)
          ],
        ),
        child: child,
      ),
    );
  }
}
