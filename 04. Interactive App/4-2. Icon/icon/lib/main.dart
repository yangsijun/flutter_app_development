import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeIcon(),
    );
  }
}

class PracticeIcon extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const <Widget>[

          // Set a first Icon
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 40,
            semanticLabel: 'This is star Icon',            
          ),

          // Set a second Icon
          Icon(
            Icons.directions_run,
            color: Colors.green,
            size: 30,
          ),

          // Set a third Icon
          Icon(
            Icons.menu,
            color: Colors.grey,
            size: 36,
          ),
        ],
      ),
    );
  }
}