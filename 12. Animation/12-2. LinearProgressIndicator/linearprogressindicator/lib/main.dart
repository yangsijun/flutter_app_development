import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeLinearProgressIndicator(),
    );
  }
}

class PracticeLinearProgressIndicator extends StatefulWidget {
  @override
  State<PracticeLinearProgressIndicator> createState() => _PracticeLinearProgressIndicatorState();
}

// Set TickerProviderStateMixin in class _PracticeLinearProgressIndicatorState
class _PracticeLinearProgressIndicatorState extends State<PracticeLinearProgressIndicator> with TickerProviderStateMixin {

  // Set AnimationController
  late AnimationController controller;

  // Set override function initState
  @override
  void initState() {

		// Set controller to AnimationController
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addListener(() {
      setState(() {});
    });

		// Repeat it with controller.repeat
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practice LinearProgressIndicator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'This is LinearProgressIndicator',
              style: TextStyle(fontSize: 20),
            ),

            // Set LinearProgressIndicator
            LinearProgressIndicator(

							// Set value, semanticsLabel, color
              color: Colors.green,
              // valueColor: _colorTween,
              // backgroundColor: grey,
              value: controller.value,
              semanticsLabel: 'Linear Progress Indicator',

            ),
          ],
        ),
      ),
    );
  }
}
