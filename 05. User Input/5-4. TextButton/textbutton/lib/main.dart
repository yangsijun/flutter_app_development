import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeTextButton(),
    );
  }
}

class PracticeTextButton extends StatefulWidget {
  @override
  State<PracticeTextButton> createState() => _PracticeTextButtonState();
}

class _PracticeTextButtonState extends State<PracticeTextButton> {
	
	// Set two bool type variables to false
  bool longPressed = false;
  bool pressed = false;
	
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice TextButton'),
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
            Text(
                longPressed ? 'long pressed' : 'not long pressed',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20,),
            
            TextButton(
	
              // Set TextButton's child to Text
              child: Text('Text button'),

              // Set onPressed to null and function which set pressed opposite
              onPressed: () {
                setState(() {
                  pressed = !pressed;
                });
              },

              // Set onLongPress to null and function which set longPressed opposite
              onLongPress: () {
                setState(() {
                  longPressed = !longPressed;
                });
              },
							
              style: TextButton.styleFrom(

                // Set TextButton's textStyle(fontsize: 25)
                textStyle: TextStyle(fontSize: 25),

                // Set TextButton's backgroundColor
                backgroundColor: Colors.blue,

                // Set TextButton's primary
                primary: Colors.white,

                // Set TextButton's elevation
                elevation: 5,

              ),
            ),
          ],
        )
      )
    );
  }
}
