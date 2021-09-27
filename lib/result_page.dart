import 'package:flutter/material.dart';
import 'bottom_button.dart';
import 'constants.dart';
import 'ReusableCard.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'BMI CALCULATOR',
      )),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                padding: EdgeInsets.all(20.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kResultTextStyle,
                )),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kCardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText, style: kFitnessTextStyle),
                    Text(
                      bmiResult,
                      style: kNumberLabelTextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kFinalLineTextStyle,
                    )
                  ],
                ),
                onPress: () {},
              ),
            ),
            BottomButton(
              label: 'RE-CALCULATE',
              navigator: () {
                Navigator.pop(context);
              },
            )
          ]),
    );
  }
}
