import 'package:bmiapp/res/color/colors.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  UiStuff uiStuff = UiStuff();
  String gender;
  Icon genderIcon;
  GenderCard({super.key, required this.gender, required this.genderIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          genderIcon,
          SizedBox(
            height: 25,
          ),
          Text(
            gender,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                decoration: TextDecoration.none),
          )
        ],
      ),
    );
  }
}
