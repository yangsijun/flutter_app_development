import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeStack(),
    );
  }
}

class PracticeStack extends StatefulWidget {
  @override
  State<PracticeStack> createState() => _PracticeStackState();
}

class _PracticeStackState extends State<PracticeStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice Stack'),
        ),

        // Set Stack in body and two Containers
        body: Stack(
          children: [

            // Set Container, its height and decoration
            Container(
              height: 500,
              decoration: BoxDecoration(

                // Set borderRadius
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),

                // Set color
                color: Colors.lightBlueAccent,

              ),
            ),

            Positioned(
              left: 85,
              top: 100,

              // Set Container, its height and decoration
              child: Container(
                decoration: BoxDecoration(
                  // Set shape and color
                  shape: BoxShape.circle,
                  color: Colors.yellow,
                ),
                height: 200,
                width: 200,
              ),
            ),
          ],
        )
    );
  }
}
