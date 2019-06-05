import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[800],
        ),
        body: EightBall(),
      ),
    ),
  );
}

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int imageNumber = 1;

  void changeTheNumber() {
    imageNumber = Random().nextInt(5) + 1;
    print('$imageNumber');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          child: Image.asset(
            'images/ball$imageNumber.png',
            gaplessPlayback: true,
          ),
          onPressed: () {
            setState(() {
              changeTheNumber();
            });
          },
        ),
      ),
    );
  }
}
