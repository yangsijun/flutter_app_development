import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: PraticeText(),
        ),
      ),
    );
  }
}

class PraticeText extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      // Set Container's child as Text
      child: Text(
        'Hello World!',

        // Set textAlign
        textAlign: TextAlign.end,

        // Set TextStyle's fontStyle
        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 300),

        // Set TextOverflow
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}