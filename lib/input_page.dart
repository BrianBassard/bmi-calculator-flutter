import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 70.0;
const cardColour = Color(0xff3b6978);
const bottomContainerColor = Color(0xffcae8d5);

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
                  colour: cardColour,
                  cardChild: MaleContent(),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: cardColour,
                  cardChild: FemaleContent(),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: cardColour,
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: cardColour,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: cardColour,
                ),
              ),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ]));
  }
}

class MaleContent extends StatelessWidget {
  const MaleContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          FontAwesomeIcons.mars,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'Male',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

class FemaleContent extends StatelessWidget {
  const FemaleContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          FontAwesomeIcons.venus,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'Female',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(12.5),
      ),
    );
  }
}

// Color(0xff3b6978),

//test
