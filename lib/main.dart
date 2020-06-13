import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballNumber = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[800],
        ),
        body: Center(
          child: Container(
            child: FlatButton(
              child: Image.asset('images/ball$ballNumber.png'),
              onPressed: () {
                setState(
                  () {
                    ballNumber = Random().nextInt(5) + 1;
                  },
                );
                print("Button clicked");
                print(ballNumber);
              },
            ),
          ),
        ),
      ),
    );
  }
}
