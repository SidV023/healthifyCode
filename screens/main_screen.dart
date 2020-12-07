import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/utilities/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bmi_calculator/extractedWidgets/buttonTemplate.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/extractedWidgets/reusable_card.dart';
import 'login_screen.dart';
import 'chat_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  @override
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    animation = ColorTween(begin: kBottomContainerColor, end: Color(0xFF0A0E21))
        .animate(controller);

    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ReusableCard(
          colour: kActiveCardColour,
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                  children: [
                    CircleAvatar(
                      radius: 65.0,
                      backgroundColor: kBottomContainerColor,
                      child: CircleAvatar(
                        child: Container(
                          child: Hero(
                            tag: 'logo',
                            child: Image.asset('images/health.png'),
                          ),
                          height: 200.0,
                        ),
                        radius: 60.0,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30.0),
                      child: Center(
                        child: Flexible(
                          child: TypewriterAnimatedTextKit(
                            speed: Duration(milliseconds: 250),
                            text: ['HEALTHIFY'],
                            textStyle: TextStyle(
                              color: kBottomContainerColor,
                              fontSize: 32.0,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.italic,
                              letterSpacing: 3.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "\"Healthy isn't a goal. It's a way of living\"",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "                                            - Anonymous",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                child: BottomButton(
                  textData: 'CALCULATE YOUR BMI',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => InputPage()));
                  },
                ),
              ),

              SizedBox(height: 10.0,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: BottomButton(
                  textData: 'CHAT WITH EXPERT',
                  onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
