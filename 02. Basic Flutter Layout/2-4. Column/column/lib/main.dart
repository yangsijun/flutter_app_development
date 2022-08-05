import 'package:flutter/material.dart';

void main() =>  runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ColumnPractice(),
    );
  }
}

class ColumnPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 600,
        width: 500,
        color: Colors.black,

        // Set the child to Column
        child: Column(
          // Set textDirection
          textDirection: TextDirection.rtl,

          // Set the children widgets in Column (3 Conatainer)
          children: <Widget> [
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ],

          // Set alignment horizontally (Center, Start, End)
          mainAxisAlignment: MainAxisAlignment.end,

          // Set alignment vertically (Center, Start, End)
          crossAxisAlignment: CrossAxisAlignment.end,
        ),
      ),
    );
  }
}