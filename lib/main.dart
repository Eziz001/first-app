import 'package:flutter/material.dart';
import 'package:mi_card/dice.dart';
import 'package:mi_card/flutter_developer.dart';
import 'package:mi_card/i_am_poor.dart';
import 'package:mi_card/magic_ball.dart';
import 'package:mi_card/quizler.dart';

import 'package:mi_card/routes.dart';
import 'package:mi_card/xylophone.dart';




void main() => runApp(
      MaterialApp(debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const Routes(),
          '/second': (context) => const MyApp(),
          '/third': (context) => const IAmPoor(),
          '/fourth':(context) => const Dice(),
          '/fifth':(context) => const MagicBall(),
          '/sixth':(context) =>  Xylophone(),
          // '/seventh':(context)=> Quiz(),

        },
      ),
    );





