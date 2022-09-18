/**
 * Created by : Ayush Kumar
 * Created on : 31-08-2022
 */
import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../../../theme/app_base_style.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_text_theme.dart';

class PetCheckBox extends StatelessWidget {
  final String title;
  const PetCheckBox({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(90)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            blurRadius: 2.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
          )
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
            child: RoundCheckBox(
              borderColor: Colors.transparent,
              checkedColor: primaryColor,
              uncheckedColor: greyColor,
              onTap: (value) {},
            ),
          ),
          const Spacer(),
          Text(
            title,
            style: buttonStyle.copyWith(color: Colors.black),
            textAlign: TextAlign.center,
          ),
          widthSpace30,
          widthSpace10,
          const Spacer(),
        ],
      ),
    );
  }
}
