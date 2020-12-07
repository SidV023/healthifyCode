import 'package:bmi_calculator/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/extractedWidgets/reusable_card.dart';
import 'package:bmi_calculator/extractedWidgets/buttonTemplate.dart';
import 'package:bmi_calculator/screens/main_screen.dart';
import 'package:bmi_calculator/extractedWidgets/diet_table_widget.dart';

class UnderDietChart extends StatelessWidget {
  double bmiResult;

  UnderDietChart({this.bmiResult});

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
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ReusableCard(
              colour: kActiveCardColour,
              cardChild: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Oops, your BMI said you\'re Underweight. Here is the diet chart we recommend for you:',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            DietChartTableWidget(
              rowHeight: 55.0,
              diet8: 'Bread, Eggs with Milk/Tea/Coffee',
              diet13: 'Beans, Meat, Eggs or any kind of Starchy Food(Carbs). Try eating more rice than chapatis in your meal.\n',
              diet17: 'Fruits(a lot), dry fruits with Milk/Tea/Coffee',
              diet22: 'Anything that will provide ample amount of proteins, carbs etc.',
              dietBB: 'A big glass of milk',
            ),
            Column(
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