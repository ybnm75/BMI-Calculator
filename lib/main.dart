import 'package:flutter/material.dart';
import 'input_file.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A0E21),
        ),
        // accentColor: Colors.yellow, nahawha fel version jdida nakhdmou beha floatingActionButton Theme.
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        // textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white),),
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.greenAccent),
      ),
      home: InputPage(),
    );
  }
}