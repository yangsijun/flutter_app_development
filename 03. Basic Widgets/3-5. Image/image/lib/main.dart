import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeImage(),
    );
  }
}

class PracticeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      THIS SECTION CODE CANNOT EXECUTION IN DART PAD
      // Set Container child as Image.asset
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Image.asset(
            'asset/sea.jpg',
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      */

      body: Center(
        // Set Container child as Image.network
        child: Container(
          height: 200,
          width: 200,
          child: Image.network(
            'https://cdn.pixabay.com/photo/2022/05/24/09/48/sky-7218043_960_720.jpg',

            // Set Image.network fit
            fit: BoxFit.fitWidth,
            // fit: BoxFit.cover,

            // Set color and colorBlendMode
            color: Colors.lightBlueAccent,
            colorBlendMode: BlendMode.softLight,
          ),
        ),
      ),
    );
  }
}