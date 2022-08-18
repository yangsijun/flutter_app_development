import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeTimePicker(),
    );
  }
}

class PracticeTimePicker extends StatefulWidget {
  @override
  State<PracticeTimePicker> createState() => _PracticeTimePickerState();
}

class _PracticeTimePickerState extends State<PracticeTimePicker> {

  // Set TimeOfDay type variable to now
  TimeOfDay _selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice TimePicker'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Set text
                Text('select time: ${_selectedTime.hour}:${_selectedTime.minute}', style: TextStyle(fontSize: 25)),

                const SizedBox(height: 20,),

                // Set ElevateButton for showing TimePicker
                ElevatedButton(
                  onPressed: () async {
                    // Call and set showTimePicker and store in TimeOfDay? type
                    TimeOfDay? selectTime = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );
                      
                    // Call setState for setting _selectedTime as selectTime
                    setState(() {
                      _selectedTime = selectTime!;
                    });
                  },
                  child: Text('Time Picker'),
                ),
              ],
            )
        )
    );
  }
}
