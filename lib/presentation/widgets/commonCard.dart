import 'dart:ffi';

import 'package:bmiapp/res/color/colors.dart';
import 'package:flutter/material.dart';

class commonCard extends StatelessWidget {
  commonCard(
      {super.key, required this.color, required this.cardChild, this.onPress});

  final Color color;
  final Widget cardChild;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: cardChild,
          )),
    );
  }
}
