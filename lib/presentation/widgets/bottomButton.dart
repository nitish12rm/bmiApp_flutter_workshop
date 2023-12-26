import 'package:bmiapp/res/color/colors.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  UiStuff uiStuff = UiStuff();
  BottomButton({required this.onTap, required this.buttonTitle});

  final Function() onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        color: uiStuff.kBottomButtonColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: uiStuff.kBottomContainerHeight,
      ),
    );
  }
}
