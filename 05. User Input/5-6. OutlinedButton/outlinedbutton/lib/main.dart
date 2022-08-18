import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeElevatedButton(),
    );
  }
}

class PracticeElevatedButton extends StatefulWidget {
  @override
  State<PracticeElevatedButton> createState() => _PracticeElevatedButtonState();
}

class _PracticeElevatedButtonState extends State<PracticeElevatedButton> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice OutlinedButton'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  pressed ? 'pressed' : 'not pressed',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20,),
                OutlinedButton(

                  // Set OutlinedButton's child to Text
                  child: Text('Outlined button', style: TextStyle(fontSize: 25)),

                  onPressed: () {
                    setState(() {
                      pressed = !pressed;
                    });
                  },
                  style: OutlinedButton.styleFrom(

                    // Set OutlinedButton's primary
                    primary: Colors.green,

                    // Set OutlinedButton's backgroundColor 
                    backgroundColor: Colors.white,

                    // Set OutlinedButton's shape as Rounded
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),

                  ),
                ),
              ],
            )
        )
    );
  }
}
