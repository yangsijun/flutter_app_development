import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeCustomWidgets(),
    );
  }
}

class PracticeCustomWidgets extends StatefulWidget {
  @override
  State<PracticeCustomWidgets> createState() => _PracticeCustomWidgetsState();
}

class _PracticeCustomWidgetsState extends State<PracticeCustomWidgets> {

  // Set bool type variable to false
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice CustomWidgets"),
      ),
        body: Center(
          child: Column(
            children: [

              // Call CustomButton
              CustomButton(text: 'First Button'),

              // Call CustomButton
              CustomButton(text: 'Second Button', elevation: 5.0, primary: Colors.green,),

              // Call CustomButton
              CustomButton(text: 'Third Button', onPressed: thirdButtonPressed,),

              // Set Text according to _isPressed
              _isPressed ? Text('Pressed') : Text('Not Pressed'),

            ],
          ),
        )
    );
  }

  // Set function thirdButtonPressed which change _isPressed value
  void thirdButtonPressed() {
    print('Button Pressed : $_isPressed');
    setState(() {
      _isPressed = !_isPressed;
    });
  }

}

// Set Class CustomButton as StatelessWidget
class CustomButton extends StatelessWidget{

  // Set 4 parameters
  final text;
  final onPressed;
  final primary;
  final elevation;

  // Set Constructor for getting parameter
  const CustomButton(
    {Key? key,
    required this.text,
    this.onPressed,
    this.primary,
    this.elevation})
    : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Set ElevatedButton using parameter
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: primary, elevation: elevation),
      onPressed: onPressed ?? () {},
      child: Text(text),
    );

  }
}