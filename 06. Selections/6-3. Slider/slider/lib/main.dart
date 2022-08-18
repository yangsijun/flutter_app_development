import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeSlider(),
    );
  }
}

class PracticeSlider extends StatefulWidget {
  @override
  State<PracticeSlider> createState() => _PracticeSliderState();
}

class _PracticeSliderState extends State<PracticeSlider> {

  // Set double type variable
  double _currentSliderValue = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice Slider'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Set text
                Text(_currentSliderValue.round().toString(), style: TextStyle(fontSize: 25),),

                SliderTheme(

                  // Set SliderThemeData in data
                  data: const SliderThemeData(

									  // Set activeTrackColor and thumbShape
                    activeTrackColor: Colors.blue,
                    thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 10,
                      elevation: 3,
                    ),

                    valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                  ),

                  // Set Slider using _currentSliderValue
                  child: Slider(
									  // Set min, max, divisions, label and onChanged
                    value: _currentSliderValue,
                    min: 0.0,
                    max: 100.0,
                    divisions: 10,
                    label: '${_currentSliderValue.round()}',
                    onChanged: (double newValue) {
                      setState(() {
                        _currentSliderValue = newValue;
                      });
                    },
                  ),
                ),
              ],
            )
        )
    );
  }
}
