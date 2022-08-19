import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeCard(),
    );
  }
}

class PracticeCard extends StatefulWidget {
  @override
  State<PracticeCard> createState() => _PracticeCardState();
}

class _PracticeCardState extends State<PracticeCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice Card'),
        ),
        body: Center(
          child: Card(

            // Set elevation as 5
            elevation: 5,

            // Set color as white30
            color: Colors.white30,

            // Set shape, side and borderRadius
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(15),
            ),

            // Set child using Padding, Column, ListTile and Row
            child: Padding(
              padding: const EdgeInsets.all(5.0), 
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('This is Card'),
                    subtitle: Text('You can add any widget in card'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('Delete'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Next'),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ),
        )
    );
  }
}
