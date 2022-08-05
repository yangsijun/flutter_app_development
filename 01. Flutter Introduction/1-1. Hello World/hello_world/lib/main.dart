import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            // Set String
            'Hello World',
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    ),
  );
}