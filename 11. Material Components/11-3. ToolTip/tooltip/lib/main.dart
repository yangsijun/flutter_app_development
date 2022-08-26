import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeToolTip(),
    );
  }
}

class PracticeToolTip extends StatefulWidget {
  @override
  State<PracticeToolTip> createState() => _PracticeToolTipState();
}

class _PracticeToolTipState extends State<PracticeToolTip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pracice ToolTip"),
        ),
        body: Center(

          // Set Text and ElevationButton in Column which are in Tooltip
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Set Tooltip's message, height, padding and child as Text
              const Tooltip(
                message: 'This is Tooltip',
                height: 30,
                padding: EdgeInsets.all(0.0),
                child: Text('show ToolTip'),
              ),

              // Set Tooltip and its message
              Tooltip(
                message: 'You can add theme in Tooltip',

								// Set BoxDecoration's borderRadius and color in decoration
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.lightBlueAccent,
                ),

								// Set triggerMode as TooltipTriggerMode.longPress
								triggerMode: TooltipTriggerMode.longPress,

								// Set show and wait duration using Duration
                showDuration: const Duration(seconds: 2),
                waitDuration: const Duration(seconds: 1),
                preferBelow: false,

								// Set child as ElevatedButton
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('long press to show Tooltip'),
                ),

              ),
            ],
          )
        )
    );
  }
}
