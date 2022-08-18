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
          title: Text('Practice ElevatedButton'),
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
                ElevatedButton(

                  // Set ElevatedButton's child to Text
                  // child: Text('Elevated button', style: TextStyle(fontSize: 25),),

                  // Set ElevatedButton's child using Row
                  child: Row(
                    children: const [
                      Icon(Icons.star, size: 30),
                      Text('Star'),
                    ],
                  ),

                  onPressed: () {
                    setState(() {
                      pressed = !pressed;
                    });
                  },

                  style: ElevatedButton.styleFrom(

                    // Set ElevatedButton's primary
                    primary: Colors.blue,

                    // Set ElevatedButton's elevation
                    elevation: 3,

                    // Set ElevatedButton's fixedSize
                    fixedSize: const Size(100, 50),

                  ),
                ),
              ],
            )
        )
    );
  }
}
