import 'package:bmi_calculator/extractedWidgets/buttonTemplate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/utilities/constants.dart';
import 'package:bmi_calculator/extractedWidgets/reusable_card.dart';
import 'diet charts/over_diet_chart.dart';
import 'diet charts/fit_diet_chart.dart';
import 'diet charts/under_diet_chart.dart';
import 'exercise_charts/over_exercise_chart.dart';
import 'exercise_charts/fit_exercise_chart.dart';
import 'exercise_charts/under_exercise_chart.dart';

class ChartSheet extends StatelessWidget {
  double bmiResult;

  ChartSheet({this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF0F0E21),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Expanded(
        flex: 5,
        child: ReusableCard(
          colour: kActiveCardColour,
          cardChild: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    backgroundColor: kBottomContainerColor,
                    radius: 45.0,
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundColor: Colors.white,
                      child: Hero(
                        tag: 'logo1',
                        child: Image.asset(
                          'images/health.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'CHOOSE YOUR CHART: ',
                style: kTitleTextStyle.copyWith(fontSize: 30.0),
              ),
              SizedBox(
                height: 45.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: BottomButton(
                  textData: 'DIET CHART',
                  onTap: () {
                    if (bmiResult >= 25) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OverDietChart(
                            bmiResult: bmiResult,
                          ),
                        ),
                      );
                    } else if (bmiResult >= 18.5) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FitDietChart(
                            bmiResult: bmiResult,
                          ),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UnderDietChart(
                            bmiResult: bmiResult,
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: BottomButton(
                  textData: 'EXERCISE CHART',
                  onTap: () {
                    if (bmiResult >= 25) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OverExerciseChart(
                            bmiResult: bmiResult,
                          ),
                        ),
                      );
                    } else if (bmiResult >= 18.5) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FitExerciseChart(
                            bmiResult: bmiResult,
                          ),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UnderExerciseChart(
                            bmiResult: bmiResult,
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Text(
                '(If data in some cells is not fully visible. Please scroll to read. Thank You)',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}