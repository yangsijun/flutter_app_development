import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: PracticeContainer(),
        ),
      ),
    );
  }
}

class PracticeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Set child
        child: const Text("This is Container"),

        // Set alignment
        alignment: Alignment.center,

        // Set color
        color: Colors.yellow,

        // Set the size of the height and width
        height: 100,
        width: 200,

        // Set the size of margin and padding
        margin: const EdgeInsets.all(100),
        padding: const EdgeInsets.all(20),

        // Set constraints
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 150.0,
        ),

        // Set transform
        transform: Matrix4.rotationZ(-0.2),
      ),
    );
  }
}