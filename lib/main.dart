import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff162c38),
        accentColor: Color(0xffcae8d5),
        scaffoldBackgroundColor: Color(0xff162c38),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
