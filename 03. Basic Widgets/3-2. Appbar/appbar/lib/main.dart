import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeAppBar(),
    );
  }
}

class PracticeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Set leading as Icon
        leading: Icon(Icons.keyboard_backspace),
        // leading: Icon(Icons.clear),

        // Set title as Text
        title: Text('This is AppBar'),

        // Set actions as two Icons
        actions: [
          Icon(Icons.search),
          Icon(Icons.menu),
        ],

        // Set elevation
        elevation: 5,
      ),
    );
  }
}