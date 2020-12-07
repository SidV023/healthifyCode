import 'package:flutter/material.dart';
import 'package:bmi_calculator/utilities/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onTap, this.textData});

  final Function onTap;
  final String textData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child:  Text(
            textData,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              letterSpacing: 4.0,
            ),
          ),
        ),
        color: kBottomContainerColor,
        width: double.infinity,
        height: 80.0,
        margin: EdgeInsets.only(top: 15.0),
      ),
    );
  }
}