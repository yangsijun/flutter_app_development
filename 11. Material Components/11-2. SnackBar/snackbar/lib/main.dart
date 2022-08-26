import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeSnackBar(),
    );
  }
}

class PracticeSnackBar extends StatefulWidget {
  @override
  State<PracticeSnackBar> createState() => _PracticeSnackBarState();
}

class _PracticeSnackBarState extends State<PracticeSnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice SnackBar'),
        ),
        body: Center(

          // Set Two ElevatedButton in Column which call snackBar
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _showFixedSnackBar();
                },
                child: Text("Press to show Fixed SnackBar"),
              ),
              ElevatedButton(
                onPressed: () {
                  _showFloatingSnackBar();
                },
                child: Text("Press to show Floating SnackBar"),
              ),
            ],
          )
        )
    );
  }

  // Set Future<void> type function named _showFixedSnackBar
  Future<void> _showFixedSnackBar() async {

		// Return ScaffoldMessenger.of(context).showSnackBar and set action, content, duration and padding as you want
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        // In action, Set SnackBarAction's label and onPressed
        action: SnackBarAction(
          label: 'Cancel',
          onPressed: () {
          },
        ),
        content: const Text('This is Fixed SnackBar'),
        duration: const Duration(milliseconds: 3000),
        padding: const EdgeInsets.all(10),
      ),
    );
  }

  // Set Future<void> type function named _showFloatingSnackBar
  Future<void> _showFloatingSnackBar() async {

		// Return ScaffoldMessenger.of(context).showSnackBar, set action, content, duration, padding, width, shape and behavior as you want
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
				// In behavior, set SnackBarBehavior.floating
        action: SnackBarAction(
          label: 'Cancel',
          onPressed: () {
            // Code to execute
          },
        ),

				// In shape, set borderRadius as circular in RoundedRectangleBorder
        content: const Text('This is Floating SnackBar'),
        duration: const Duration(milliseconds: 1500),
        width: 300.0, // Width of the SnackBar.
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 5.0,
        ),

        // In behavior, set SnackBarBehavior.floating
        behavior: SnackBarBehavior.floating,

        // In shape, set borderRadius as circular in RoundedRectangleBorder
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

}
