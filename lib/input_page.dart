import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: Color(0xff3b6978),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: Color(0xff3b6978),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: Color(0xff3b6978),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: Color(0xff3b6978),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: Color(0xff3b6978),
                ),
              ),
            ],
          )),
        ]));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(12.5),
      ),
    );
  }
}

// Color(0xff3b6978),

//test
