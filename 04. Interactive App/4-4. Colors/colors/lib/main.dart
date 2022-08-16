import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeColor(),
    );
  }
}

class PracticeColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          
					// Set Color using color's name
          color: Colors.lightBlueAccent,

          // Set Color property as Colros.fromRGBO(235,80,40,0.5)
          // color: Color.fromRGBO(235,80,40,0.5),
          
          // Set Color property as Colors.fromARGB(255,66,165,245)
          // color: Color.fromARGB(255,66,165,245),

          // Set Color as 7 hexadecimal
          // color: Color(0xFFEAB800),

        ),
      ),
    );
  }
}
