import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeExpanded(),
    );
  }
}

class PracticeExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Set Row in Expanded
          Expanded(
            child: Row(
              children: [
                // Set Text in Expanded and set Expanded's flex
                Expanded(
                  child: Text('First Expanded widget'),
                  flex: 3,
                ),

                Icon(Icons.star),

                // Set Text in Expanded and set Expanded's flex
                Expanded(
                  child: Text('Second Expanded widget'),
                  flex: 1,
                ),
              ],
            ),
          ),

          Container(
            height: 100,
            color: Colors.lightBlueAccent,
          ),
        ],
      ),
    );
  }
}