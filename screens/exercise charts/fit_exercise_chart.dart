import 'package:bmi_calculator/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/extractedWidgets/reusable_card.dart';
import 'package:bmi_calculator/extractedWidgets/buttonTemplate.dart';
import '../main_screen.dart';
import 'package:bmi_calculator/extractedWidgets/exercise_table_widget.dart';

class FitExerciseChart extends StatelessWidget {
  double bmiResult;

  FitExerciseChart({this.bmiResult});

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
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Here is the exercise chart we recommend for you:',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            ExerciseChartTableWidget(
              rowHeight: 140.0,
              exerciseM: 'Warm Up\n\nWalk\n\nPush-Ups\n\nStretching',
              exerciseEve: 'Walk\n\n',
              repsM: '   \n\n45 Mins\n\n20\n\n(For Cooling Down)',
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


