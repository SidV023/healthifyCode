import 'package:bmi_calculator/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/extractedWidgets/reusable_card.dart';
import 'package:bmi_calculator/extractedWidgets/buttonTemplate.dart';
import 'package:bmi_calculator/screens/main_screen.dart';
import 'package:bmi_calculator/extractedWidgets/diet_table_widget.dart';

class FitDietChart extends StatelessWidget {
  double bmiResult;

  FitDietChart({this.bmiResult});

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ReusableCard(
              colour: kActiveCardColour,
              cardChild: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Congratulations, your BMI said you\'re Fit. Here is the diet chart we recommend for you:',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            DietChartTableWidget(
              rowHeight: 50.0,
              diet8: 'Green Tea with 3 to 4 biscuits',
              diet13: 'A bowl of dal, a bowl of sabji with 3 chapatis and a large bowl of salad',
              diet17: 'Tea/Coffee with 2 to 3 Rusks and Dry Fruits(if possible)',
              diet22: 'Upma/Poha/Bhel/Moong Dal Chilla',
              dietBB: 'Cup full of warm milk',
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BottomButton(
                  textData: 'CHOOSE OTHER CHART',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                BottomButton(
                  textData: 'RETURN TO MAIN SCREEN',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainScreen(),
                      ),
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}