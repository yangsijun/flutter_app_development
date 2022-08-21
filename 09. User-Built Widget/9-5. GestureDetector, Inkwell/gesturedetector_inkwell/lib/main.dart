import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeEnableTap(),
    );
  }
}

class PracticeEnableTap extends StatefulWidget {
  @override
  State<PracticeEnableTap> createState() => _PracticeEnableTapState();
}

class _PracticeEnableTapState extends State<PracticeEnableTap> {

  // Set GestureDetector's Color type and String type
  Color _color1 = Colors.blue;
  String _pressType1 = 'not pressed';

  // Set Inkwell's Color type and String type
  Color _color2 = Colors.teal;
  String _pressType2 = 'not pressed';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Practice EnableTap"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              // Set GestureDetector
              GestureDetector(

								// Set child as Container
                child: Container(
                  color: _color1,
                  height: 100,
                  width: 100,
                  child: Center(child: Text(_pressType1)),
                ),

								// Set onTap, onLongPress and onDoubleTap
                onTap: () {
                  setState(() {
                    _color1 = Colors.green;
                    _pressType1 = 'On Tap';
                  });
                },
                onLongPress: () {
                  setState(() {
                    _color1 = Colors.yellow;
                    _pressType1 = 'On Long Press';
                  });
                },
                onDoubleTap: () {
                  setState(() {
                    _color1 = Colors.purple;
                    _pressType1 = 'On Double Tap';
                  });
                },
              ),

              // Set InkWell
              InkWell(

								// Set child as Container
                child: Container(
                  color: _color2,
                  height: 100,
                  width: 100,
                  child: Center(child: Text(_pressType2)),
                ),
	
								// Set onTap, onLongPress and onDoubleTap
                onTap: () {
                  setState(() {
                    _color2 = Colors.red;
                    _pressType2 = 'On Tap';
                  });
                },
                onLongPress: () {
                  setState(() {
                    _color2 = Colors.amber;
                    _pressType2 = 'On Long Press';
                  });
                },
                onDoubleTap: () {
                  setState(() {
                    _color2 = Colors.indigo;
                    _pressType2 = 'On Double Tap';
                  });
                },
              ),              
            ],
          ),
        )
    );
  }
}
