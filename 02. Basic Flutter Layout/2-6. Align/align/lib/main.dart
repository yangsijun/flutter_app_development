import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PracticeAlign(),
      ),
    );
  }
}

class PracticeAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Set Container's height, width, and color
      height: 500,
      width: 500,
      color: Colors.blueAccent,

      // Set Container's child to Align
      child: Align(
        child: Text('Align widget'),

        // Set Alignment
        alignment: Alignment.centerRight,
        // alignment: Alignment.topCenter,
        // alignment: Alignment.bottomLeft,
        // alignment: Aligment(1, 0),
        // alignment: Alignment(-1, 0),
      ),
    );
  }
}