import 'package:bmi_cal/constant.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {

  final String bottomTitle;
  final VoidCallback onTap;
  BottomButton(this.bottomTitle,this.onTap){}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(0xFFEB1555),
        height: 80,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        child: Center(
          child: Text(bottomTitle,
          style: kLargeButtonTextStyle
          ),
        ),
      ),
    );
  }
}