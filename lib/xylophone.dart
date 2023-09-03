import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatelessWidget {
  List<Color> color = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple
  ];


  void audioNumber(int audioNumber){
    AudioPlayer().play(
      AssetSource('note$audioNumber.wav'),
    );
  }

  Expanded buildKey (Color color, int audioNumbers ){
    return
    Expanded(
      child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
          ),
          onPressed: () {
            audioNumber(audioNumbers);
          },
          child: Container()),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Xylophone'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Column(

          children: [
            buildKey(color[0], 1),
            buildKey(color[1], 2),
            buildKey(color[2], 3),
            buildKey(color[3], 4),
            buildKey(color[4], 5),
            buildKey(color[5], 6),
            buildKey(color[6], 7),
          ],
        ),
      ),
    );
  }
}
