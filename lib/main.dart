import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff204051),
        accentColor: Color(0xffcae8d5),
        scaffoldBackgroundColor: Color(0xff84a9ac),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
