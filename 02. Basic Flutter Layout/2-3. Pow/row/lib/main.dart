import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RowPractice(),
    );
  }
}

class RowPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 600,
        width: 500,
        color: Colors.black,

        // Set the child to Row
        child: Row(

          // Set textDirection
          textDirection: TextDirection.ltr,

          // Set children widgets in Row (3 containers)
          children: <Widget> [
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ],

          // Set alignment horizontally (Center, Start, End)
          mainAxisAlignment: MainAxisAlignment.end,

          // Set alignment vertically (Center, Start, End)
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}