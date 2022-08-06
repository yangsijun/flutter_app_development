import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeSizedBox(),
    );
  }
}

class PracticeSizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.blueAccent,
          ),

          // Set SizedBox
          SizedBox(
            // Set SizedBox's height
            height: 50,

            // Set SizedBox's width
            width: 50,

            // Set SizedBox's child as Text
            child: Text('This is SizedBox'),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}