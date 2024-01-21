import 'package:bmi_cal/constant.dart';
import 'package:flutter/material.dart';



class IconContent extends StatelessWidget {
  final IconData icon;
  final String mytext;

  IconContent(
    this.icon,
    this.mytext,
  ) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          mytext,
          style: labelTextStyle,
        )
      ],
    );
  }
}