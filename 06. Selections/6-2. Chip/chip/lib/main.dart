import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeChip(),
    );
  }
}

class PracticeChip extends StatefulWidget {
  @override
  State<PracticeChip> createState() => _PracticeChipState();
}

class _PracticeChipState extends State<PracticeChip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice Chip'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [

                // Set Chip's backgroundColor and label
                Chip(
                  backgroundColor: Colors.lightBlueAccent,
                  label: Text('Chip'),
                ),

                // Set avatar as CircleAvatar
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.star, color: Colors.white),
                  ),

	                // Set Chip's label
                  label: Text('Circular chip'),
                ),
              ],
            )
        )
    );
  }
}
