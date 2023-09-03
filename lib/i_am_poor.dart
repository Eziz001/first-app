import 'package:flutter/material.dart';

void main() => runApp(IAmPoor());

class IAmPoor extends StatelessWidget {
  const IAmPoor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('I am poor'),
      ),
      body: SafeArea(
        child: Center(
          child: Image.asset('images/1.png'),
        ),
      ),
    );
  }
}
