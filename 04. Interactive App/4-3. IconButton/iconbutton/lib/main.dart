import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeIconButton(),
    );
  }
}

class PracticeIconButton extends StatefulWidget {
  @override
  State<PracticeIconButton> createState() => _PracticeIconButtonState();
}

class _PracticeIconButtonState extends State<PracticeIconButton> {
  
	// Set bool type variable
  bool isFavorited = true;

  // Set initState and isFavorited variable
  @override
  void initState() {
    isFavorited = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          
					// Set an icon with Ternary Operator
          icon: isFavorited ? Icon(Icons.favorite) : Icon(Icons.favorite_border),

          // Set iconSize
          iconSize: 40,

          // Set onPressed using setState
          onPressed: () {
            setState(() {
              isFavorited = !isFavorited;
            });
          },

          // Set color with Ternary Operator
          color: isFavorited ? Colors.red : Colors.grey,

          // Set a tooltip
          tooltip: 'press the Icon button',

        ),
      )
    );
  }
}
