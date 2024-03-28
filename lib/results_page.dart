import"package:flutter/material.dart";

import "constants.dart";
import "mycard.dart";

class ResultsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'BMI Calculator', style: TextStyle(
          fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    centerTitle: true,
      ),

      body:  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(child:  Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Your Result",
            style: knumberTextStyle,

          ),
        ),),
        Expanded(
          flex: 5,
          child: Mycard(
            colours: Color(0xFF111328),
            cardChild: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "NORMAL",
                  style: kresultTextStyle,

                ),
                Text(
                   '18',
                  style: knumberTextStyle,
                  ),
                Text(
                  'okay va tutto bene',
                  style: kLabelTextStyle,
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            child: Center(child: Text("RE-CALCULATE", style: kLargeContainerColour,)),
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