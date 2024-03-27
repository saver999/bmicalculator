import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cardChild extends StatelessWidget {
  cardChild({ required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

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
            style: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF8D8E98),
            ),
          ),
        ],
      ),
    );
  }
}