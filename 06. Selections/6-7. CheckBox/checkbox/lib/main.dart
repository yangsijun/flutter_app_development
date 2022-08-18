import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeCheckBox(),
    );
  }
}

class PracticeCheckBox extends StatefulWidget {
  @override
  State<PracticeCheckBox> createState() => _PracticeCheckBoxState();
}

class _PracticeCheckBoxState extends State<PracticeCheckBox> {

  // Set 2 bool type variables
  bool _isChecked = false;
  bool _isTileChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice CheckBox'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Set Checkbox using _isChecked, and change activeColor or checkColor as you want
                Checkbox(
                  value: _isChecked,
                  activeColor: Colors.lightBlueAccent,
                  checkColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),

                SizedBox(height: 20,),

                // Set CheckboxListTile using _isTileChecked, set value, title and onChanged
                CheckboxListTile(
                  value: _isTileChecked,
                  title: Text('You can make tile for CheckBox'),
                  onChanged: (value) {
                    setState(() {
                      _isTileChecked = value!;
                    });
                  },
                ),

              ],
            )
        )
    );
  }
}
