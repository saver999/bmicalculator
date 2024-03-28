import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'mycard.dart';
import 'cardchild.dart';
import 'constants.dart';

enum Gender { male, female }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isActiveMale = false;
  bool isActiveFemale = false;
  int height = 180;
  int weight = 60;
  int age = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isActiveFemale = false;
                        isActiveMale = true;
                      });
                    },
                    child: Mycard(
                      colours: isActiveMale
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: cardChild(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isActiveFemale = true;
                        isActiveMale = false;
                      });
                    },
                    child: Mycard(
                      colours: isActiveFemale
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: cardChild(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Mycard(
              colours: Color(0xFF111328),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$height',
                        style: knumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Colors.amber,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Mycard(
                    colours: Color(0xFF111328),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("WEIGHT", style: kLabelTextStyle,),
                        Text("$weight", style: knumberTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButton(icon: Icons.remove, onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },),
                            CustomButton(icon: Icons.add, onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Mycard(
                    colours: Color(0xFF111328),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("AGE", style: kLabelTextStyle,),
                        Text("$age", style: knumberTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButton(icon: Icons.remove, onPressed: () {
                              setState(() {
                                age--;
                              });
                            },),
                            CustomButton(icon: Icons.add, onPressed: () {
                              setState(() {
                                age++;
                              });
                            },),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/second');
            },
            child: Container(
              child: Center(child: Text("CALCULATE", style: kLargeContainerColour,)),
              color: Colors.amberAccent,
              height: 80,
              width: double.infinity,
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.only(bottom: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomButton({required this.icon, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.white,
        size: 23,
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(13),
        shape: CircleBorder(),
        fixedSize: Size(0, 52),
        backgroundColor: Color(0xFF4C4F5E)
      ),
    );
  }

}
