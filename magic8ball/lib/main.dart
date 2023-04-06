import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Container(
          child: Center(
            child: TextButton(
              child: Image.asset('images/ball$ballNumber.png'),
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
