import 'package:flutter/material.dart';
import 'constante.dart';
import 'reusable_card.dart';
import 'bottomButton.dart';



class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult,@required this.interpretation,@required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result :',
                style: kResultTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(couleur: kActiveCallColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText,
                    style: kResultTextStyle2,),
                  Text(bmiResult,
                      style:kResultNumberStyle),
                  Text(
                    interpretation,
                    style:kLabelTextStyle,
                    textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
          BottomButton(calc: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),

        ],
      ),
    );
  }
}
