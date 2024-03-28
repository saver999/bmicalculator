import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
class cardChild extends StatelessWidget {
  cardChild({  this.icon, required this.text});
  final IconData ?icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [

        Icon(
          color: Colors.white,
          icon,
          size: 60.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}