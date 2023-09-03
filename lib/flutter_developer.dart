import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.teal,
      appBar: AppBar(title: Text('About me'), centerTitle: true, backgroundColor: Colors.teal,),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 75.0,
                backgroundImage: AssetImage(
                  'images/3.jpg',
                ),
              ),
            ),
            Text(
              'Anderson Murphy',
              style: TextStyle(fontFamily: 'Pacifico', fontSize: 25.0),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(fontFamily: 'Tektur', fontSize: 30.0),
            ),
            SizedBox(
              width: 150.0,
              height: 10.0,
              child: Divider(
                color: Colors.white,
                thickness: 1.0,
              ),
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'achylov26021998@gmail.com',
                      style: TextStyle(color: Colors.teal),
                    )
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '+99361955609',
                      style: TextStyle(color: Colors.teal),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
