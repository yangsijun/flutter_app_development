import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeDatePicker(),
    );
  }
}

class PracticeDatePicker extends StatefulWidget {
  @override
  State<PracticeDatePicker> createState() => _PracticeDatePickerState();
}

class _PracticeDatePickerState extends State<PracticeDatePicker> {

  // Set DateTime type variable to now
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice DatePicker'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

								// Set text
                Text('${_selectedDate.month}/${_selectedDate.day}/${_selectedDate.year}', style: TextStyle(fontSize: 25)),
                
                const SizedBox(height: 20,),

                // Set ElevateButton for showing DatePicker
                ElevatedButton(
                  onPressed: () async {
										// Call and set showDatePicker and store in DateTime? type
                    DateTime? selectDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2025),
                    );

										// Call setState for setting _selectedDate as selectDate
                    setState(() {
                      _selectedDate = selectDate!;
                    });
                    
                  },
                  child: Text('DatePicker')

                ),
              ],
            )
        )
    );
  }
}
