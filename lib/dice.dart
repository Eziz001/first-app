import 'package:flutter/material.dart';
import 'dart:math';
class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override

  int leftDiceNumber = 8;
  int rightDiceNumber = 8;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Dice'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () => setState(() {
                    pressed();
                  }),
                  child: Image.asset('images/$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () => setState(() {
                 pressed();
                  }),
                  child: Image.asset('images/$rightDiceNumber.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void pressed(){
    rightDiceNumber = Random().nextInt(6)+3;
    leftDiceNumber = Random().nextInt(6)+3;
  }
}
