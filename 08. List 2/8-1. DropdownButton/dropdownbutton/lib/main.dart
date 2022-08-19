import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeDropdownButton(),
    );
  }
}

class PracticeDropdownButton extends StatefulWidget {
  @override
  State<PracticeDropdownButton> createState() => _PracticeDropdownButtonState();
}

class _PracticeDropdownButtonState extends State<PracticeDropdownButton> {

  // Set List<String> as fruits
  List<String> dropdownValue = [
    'Apple',
    'Banana',
    'Grape',
    'Strawberry',
  ];

  // Set String type variable as first fruit
  String selectedValue = 'Apple';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice DropdownButton'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(selectedValue, style: TextStyle(fontSize: 20),),
              SizedBox(height: 20,),

              // Set DropdownButton type as String
              DropdownButton<String>(

                // Set value as selectedValue
                value: selectedValue,

                // Set underline using Divider
                underline: Divider(height: 4, color: Colors.blue,),

                // Set Icon, style and dropdownColor
                icon: Icon(Icons.arrow_downward, color: Colors.blue,),
                style: TextStyle(fontSize: 20, color: Colors.blue,),
                dropdownColor: Colors.yellowAccent,

                // Set onChanged function using setState
                onChanged: (String? value) {
                  // Change selectedValue as changed value
                  setState(() {
                    selectedValue = value!;
                  });
                },

                // Set items as DropdownMenuItem using dropdownValue, map and toList
                items: dropdownValue.map((String value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),

              )
            ],
          ),
        )
    );
  }
}
