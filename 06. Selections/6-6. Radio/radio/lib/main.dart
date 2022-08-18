import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeRadio(),
    );
  }
}

class PracticeRadio extends StatefulWidget {
  @override
  State<PracticeRadio> createState() => _PracticeRadioState();
}

class _PracticeRadioState extends State<PracticeRadio> {

  // Set String type variable
  String _color = 'Not Selected';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice Radio'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Set Text for the condition
                Text(_color, style: TextStyle(fontSize: 25)),

                ListTile(
                  title: Text('Blue'),

                  // Set Radio using _color, set value to 'Blue', and set activeColor to blue
                  leading: Radio(
                    value: 'Blue',
                    groupValue: _color,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        _color = value.toString();
                      });
                    },
                  ),
                ),

                ListTile(
                  title: Text('Yellow'),

                  // Set Radio using _color, set value to 'Yellow', and set activeColor to yellow
                  leading: Radio(
                    value: 'Yellow',
                    groupValue: _color,
                    activeColor: Colors.yellow,
                    onChanged: (value) {
                      setState(() {
                        _color = value.toString();
                      });
                    }
                  ),
                ),

                ListTile(
                  title: Text('Red'),

                  // Set Radio using _color, set value to 'Red', and set activeColor to red
                  leading: Radio(
                    value: 'Red',
                    groupValue: _color,
                    activeColor: Colors.red,
                    onChanged: (value) {
                      setState(() {
                        _color = value.toString();
                      });
                    }
                  ),
                )
              ],
            )
        )
    );
  }
}
