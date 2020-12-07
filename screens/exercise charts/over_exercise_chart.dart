import 'package:bmi_calculator/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/extractedWidgets/reusable_card.dart';
import 'package:bmi_calculator/extractedWidgets/buttonTemplate.dart';
import '../main_screen.dart';
import 'package:bmi_calculator/extractedWidgets/exercise_table_widget.dart';

class OverExerciseChart extends StatelessWidget {
  double bmiResult;

  OverExerciseChart({this.bmiResult});

  void chooseChart() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('HEALTHIFY'),
          leading: Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Hero(
              tag: 'logo1',
              child: Image.asset('images/health.png'),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ReusableCard(
              colour: kActiveCardColour,
              cardChild: Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(
                  'Since your BMI said you\'re overweight, here is the Exercise Chart that we recommend:',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            ExerciseChartTableWidget(
              rowHeight: 100.0,
              exerciseM: 'Walk\n\nSquats\n\nSlow Running',
              exerciseEve: 'Walk\n\nStretching',
              repsM: '30 Mins\n\n20\n\n15 Mins',
              repsE: '45 Mins\n\n',
            ),
            Column(
              children: [
                BottomButton(
                  textData: 'CHOOSE OTHER CHART',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


