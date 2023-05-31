import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: BallPage()));
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[900],
        title: Text('Ask me Anything'),
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void changeBallNumber() {
    setState(() => ballNumber = Random().nextInt(5) + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
      onPressed: () {
        changeBallNumber();
      },
      child: Image.asset(
        'images/ball$ballNumber.png',
      ),
    ));
  }
}
