import 'package:flutter/material.dart';

class Routes extends StatelessWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All in one'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal.shade700,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NewGesture(mainText: 'About me' , pathName: '/second'),
            NewGesture(mainText: 'I am poor' , pathName: '/third'),
            NewGesture(mainText: 'Dice' , pathName: '/fourth'),
            NewGesture(mainText: 'Magic Ball' , pathName: '/fifth'),
            NewGesture(mainText: 'Xylophone' , pathName: '/sixth'),
            // NewGesture(mainText: 'Quizler' , pathName: '/seventh'),



          ],
        ),
      ),
    );
  }
}

class NewGesture extends StatelessWidget {
  NewGesture({required this.mainText, required this.pathName});
  late String mainText;
  late String pathName;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        color: Colors.teal,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            mainText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Times New Roman',
            ),
          ),
        ),
      ),
      onTap: () => Navigator.pushNamed(context, pathName),
    );
  }
}
