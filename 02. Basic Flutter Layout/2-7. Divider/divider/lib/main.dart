import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Divider',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PracticeDivider()
    );
  }
}

class PracticeDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget> [
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow
          ),

          // Set Divider's height and color
          Divider(
            height: 10,
            color: Colors.black,
          ),

          Container(
            width: 100,
            height: 100,
            color: Colors.blue
          ),

          // Set Divider's thickness
          Divider(
            thickness: 10,
            color: Colors.green,
          ),

          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),

          // Set Divider's indent and end indent
          Divider(
            indent: 20,
            endIndent: 20,
            thickness: 5,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}