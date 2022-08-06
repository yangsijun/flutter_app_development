import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeFlexible(),
    );
  }
}

class PracticeFlexible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // Set Row and two Containers in Column
            Row(
              children: [
                // Set three Containers in Row
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),

                // Set Container as Flexible
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
                
                // Set Container as Flexible
                Flexible(
                  flex: 2,
                  fit: FlexFit.loose,
                  // fit: FlexFit.tight,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
              ],
            ),

            // Set Container as Flexible
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                color: Colors.yellow,
              ),
            ),

            // Set Container
            Container(
              color: Colors.blueAccent,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}