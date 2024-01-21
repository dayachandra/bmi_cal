import 'package:bmi_cal/components/bottom_button.dart';
import 'package:bmi_cal/components/reusable_card.dart';
import 'package:bmi_cal/constant.dart';
import 'package:flutter/material.dart';

class MyResult extends StatelessWidget {
  
  final String? bmiResult;
  final String? resultText;
  final String? interpretation;
  MyResult(
      { this.interpretation,
       this.bmiResult,
       this.resultText});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(children: [
        Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
                child: Text(
          "Your Result",
          style: kTitleTextStyle,
        ))),
        Expanded(
          flex: 5,
          child: ReusableCard(
              activeCardColour,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text(
                  resultText!,
                  style: kResultTextStyle,
                ),
                Text(bmiResult!,
                style: kBMITextStyle,
                ),
                Text(interpretation!,
                textAlign: TextAlign.center,
                style: kBodyTextStyle,
                )
              ]),
              () {}),
        ),
        BottomButton("RE-CALCULATE", () { 
          Navigator.pop(context);
        })
      ]),
    );
  }
}
