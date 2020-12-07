import 'package:bmi_calculator/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/extractedWidgets/reusable_card.dart';
import 'package:bmi_calculator/extractedWidgets/buttonTemplate.dart';
import '../main_screen.dart';
import 'package:bmi_calculator/extractedWidgets/diet_table_widget.dart';

class OverDietChart extends StatelessWidget {
  double bmiResult;

 OverDietChart({this.bmiResult});

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ReusableCard(
              colour: kActiveCardColour,
              cardChild: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Since your BMI said you\'re overweight, here is the Diet Chart that we recommend:',
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
              diet8: 'Coffee/Tea with Upma/Poha',
              diet13: 'A bowl of dal, a bowl of sabji with 2 chapatis and a large bowl of salad',
              diet17: 'Green Tea with Fruits(if hungry)',
              diet22: 'Dalia with Curd/Moong Dal Chilla/Sprouts',
              dietBB: 'Cup full of warm milk',
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


