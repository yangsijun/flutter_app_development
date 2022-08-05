import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PracticePadding(),
      ),
    );
  }
}

class PracticePadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // Set padding using all
      padding: EdgeInsets.all(10),

      // Set padding using only
      // padding: EdgeInsets.only(left: 30, top: 50),

      // Set padding using fromLTRB
      // padding: EdgeInsets.fromLTRB(50, 100, 20, 0),

      // Set padding using symmetric
      // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),

      // Set child to Container
      child: Container(
        height: 100,
        width: 100,
        color: Colors.blueAccent
      ),
    );
  }
}