import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeSpacer(),
    );
  }
}

class PracticeSpacer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Set three containers
          // Set two Spacers between Containers
          // In second Spacer, set flex as 3
          Container(
            height: 100,
            color: Colors.blue,
          ),
          const Spacer(),
          // const Spacer(flex: 3),
          Container(
            height: 100,
            color: Colors.red,
          ),
          const Spacer(flex: 3,),
          Container(
            height: 100,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}