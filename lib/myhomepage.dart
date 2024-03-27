import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'mycard.dart';
import 'cardchild.dart';

const inactiveColour = Color(0xFF111328);
const activeColour = Color(0xFF1D1E33);

Color maleColour = inactiveColour;
Color femaleColour = inactiveColour;
enum Gender {
  male,
  female
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}




class _MyHomePageState extends State<MyHomePage> {


  void changeColours(Gender gender){
    if( gender == Gender.male){
      if(maleColour == inactiveColour){
        maleColour = activeColour;
        femaleColour = inactiveColour;
      }
    }
    if( gender == Gender.female){
      if(femaleColour == inactiveColour){
        femaleColour = activeColour;
        maleColour = inactiveColour;
      }
    }
  }
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
        children: [
          Expanded(
            child: Row(
              children: [

                 Expanded(
                   child:  GestureDetector(
                      onTap: () {
                        setState(() {
                          changeColours(Gender.male);

                        });
                      },
                    child: Mycard(
                      colours: maleColour,
                      cardChild: cardChild(icon: FontAwesomeIcons.mars,text: 'MALE',),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                     setState(() {
                       changeColours(Gender.female);
                     });
                    },
                    child: Mycard(
                      colours: femaleColour,
                      cardChild: cardChild(icon: FontAwesomeIcons.venus,text: 'FEMALE',),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Mycard(
              colours: Color(0xFF111328),

            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Mycard(
                    colours: Color(0xFF111328),

                  ),
                ),
                Expanded(
                  child: Mycard(
                    colours: Color(0xFF111328),

                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.amber,
            height: 80,
            width: double.infinity,
            margin: EdgeInsets.all(15),
          ),
        ],
      ),
    );
  }
}




