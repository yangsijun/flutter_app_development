import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeAnimatedCrossFaded(),
    );
  }
}

class PracticeAnimatedCrossFaded extends StatefulWidget {
  const PracticeAnimatedCrossFaded({Key? key}) : super(key: key);

  @override
  State<PracticeAnimatedCrossFaded> createState() => _PracticeAnimatedCrossFadedState();
}

class _PracticeAnimatedCrossFadedState extends State<PracticeAnimatedCrossFaded> {

  // Set bool type _isPressed as true
  bool _isPressed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice AnimatedCrossFaded'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            // Set TextButton which changes _isPressed state
            TextButton(
                onPressed: () {
                  setState(() {
                    _isPressed = !_isPressed;
                  });
                },
                child: const Text("Change child using AnimatedCrossFade", style: TextStyle(color: Colors.black),)),

            // Set AnimatedCrossFade
            AnimatedCrossFade(

							// Set sizeCurve as ElasticOutCurve()
              sizeCurve: const ElasticOutCurve(),

							// Set firstCurve, secondCurve and duration as you want
              firstCurve: Curves.decelerate,
              secondCurve: Curves.bounceIn,
              duration: const Duration(seconds: 5),

							// Set firstChild and secondChild as Container and Text
              firstChild: Container(
                width: 100,
                height: 100,
                color: Colors.blueAccent,
                child: Center(child: const Text('First Child')),
              ),
              secondChild: Container(
                width: 200,
                height: 200,
                color: Colors.redAccent,
                child: Center(child: const Text('Second Child')),
              ),

							// Set crossFadeState using _isPressed
              crossFadeState: _isPressed
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,

            ),
            SizedBox(height: 50),
            Container(
              width: 200,
              height: 50,
              color: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}