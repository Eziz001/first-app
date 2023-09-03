import 'dart:math';

import 'package:flutter/material.dart';

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  @override
  int ballNumber = 1;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,

      appBar: AppBar(
        centerTitle: true,
        title: Text('Ask me everthing'),),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
TextButton(onPressed: () { setState(() {
  ballNumber = Random().nextInt(5)+1;
}); },
child: Image.asset('images/ball$ballNumber.png'))
          ],
        ),
      ),
    );
  }
}
