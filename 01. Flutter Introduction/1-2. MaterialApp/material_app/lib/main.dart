import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // Set AppBar's title when Text Widget
          title: const Text('Home'),
        ),

        // Set body as Center widget and put Text widget as child
        body: Center(
          child: Text('Hello!'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
