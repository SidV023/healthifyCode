import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.cardIcon, this.textData});

  final IconData cardIcon;
  final String textData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 85.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          textData,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}