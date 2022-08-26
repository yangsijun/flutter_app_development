import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeCircularProgressIndicator(),
    );
  }
}

class PracticeCircularProgressIndicator extends StatefulWidget {
  @override
  State<PracticeCircularProgressIndicator> createState() => _PracticeCircularProgressIndicatorState();
}

// Set TickerProviderStateMixin in class _PracticeCircularProgressIndicatorState
class _PracticeCircularProgressIndicatorState extends State<PracticeCircularProgressIndicator> with TickerProviderStateMixin {

  // Set AnimationController
  late AnimationController controller;

  // Set override function initState
  @override
  void initState() {
		// Set controller as AnimationController
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
        title: const Text('Practice CircularProgressIndicator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'This is CircularProgressIndicator',
              style: TextStyle(fontSize: 20),
            ),

            // Set CircularProgressIndicator
            CircularProgressIndicator(

							// Set value, semanticsLabel and color
              color: Colors.green,
              value: controller.value,
              semanticsLabel: 'Circular Progress Indicator',

            ),
          ],
        ),
      ),
    );
  }
}
