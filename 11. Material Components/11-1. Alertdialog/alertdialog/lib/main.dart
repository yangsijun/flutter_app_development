import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeAlertDialog(),
    );
  }
}

class PracticeAlertDialog extends StatefulWidget {
  @override
  State<PracticeAlertDialog> createState() => _PracticeAlertDialogState();
}

class _PracticeAlertDialogState extends State<PracticeAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice AlertDialog'),
        ),
        body: Center(

          // Set ElevatedButton which call dialog using _showMyDialog function
          child: ElevatedButton(
              onPressed: () {
                _showMyDialog();
              },
              child: Text('Press to show dialog')
          ),
        )
    );
  }

  // Set Future<void> type function named _showMyDialog
  Future<void> _showMyDialog() async {

		// Return showDialog<void> and set context, barrierDismissible(false) and builder
    return showDialog<void>(
      context: context,
      barrierDismissible: false,

			// In builder, return AlertDialog which has title, content and actions
      builder: (BuildContext context) {
        return AlertDialog(

					// Set title, content as Text widget and actions as TextButton like screen
          title: const Text('AlerttDialog Title'),
          content: const Text('This is AlertDialog\'s content'),
          actions: <Widget>[
						// When TextButton clicked, set onPressed which call Navigator pop
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Future.delayed(Duration(seconds: 3), () {
                  Navigator.pop(context);
                });
              },
            ),
          ],
        );
      },
    );
  }
}
