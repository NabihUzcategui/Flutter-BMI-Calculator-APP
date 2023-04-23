// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../widges/widgets.dart';

class ResultsPage extends StatelessWidget {

  final String bmiResult;
  final String resultText;
  final String interpretation;

  const ResultsPage({
    Key? key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR '),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: const Text('Your Results', style: kTitleTextResultStyle,)
            ), 
          ),

          Expanded(
            flex: 5,
            child: CardContainer(
              colorCard: kActiveCardColor, 
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(), style: kResultsTextStyle,),
                  Text(bmiResult, style: kBMITextStyle),
                  Text(interpretation, style: kBodyTextStyle, textAlign: TextAlign.center,)
                ],
              ),
            )
          ),
          BottomButton(
            buttontitle: 'RE-CALCULATE', 
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      
    );
  }
}
