import 'package:bmicalculator/results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'myhomepage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //primaryColor: const Color(0xFF0A0E21),// not working
        scaffoldBackgroundColor: const Color(0xFF090E21),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF090E21),
        ),
      ),
      routes: {
        '/': (context) => const MyHomePage(title: 'BMI Calculator',)
      }
    );
  }
}

