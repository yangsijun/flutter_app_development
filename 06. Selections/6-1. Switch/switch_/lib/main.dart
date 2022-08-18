import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeSwitch(),
    );
  }
}

class PracticeSwitch extends StatefulWidget {
  @override
  State<PracticeSwitch> createState() => _PracticeSwitchState();
}

class _PracticeSwitchState extends State<PracticeSwitch> {

  // Set bool type variable
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice Switch'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Set Text with Ternary Operator
                Text(_isChecked ? 'Switch On' : 'Switch Off', style: TextStyle(fontSize: 25)),

                Switch(

										// Set Switch's value using _isChecked
                    value: _isChecked,

										// Change Switch's Color property
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.lightBlueAccent,
                    inactiveThumbColor: Colors.yellow,
										inactiveTrackColor: Colors.grey,

                    onChanged: (value) {
                      setState(() {
                        _isChecked = value;
                      });
                    }
                ),

              ],
            )
        )
    );
  }
}
