import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeNavigation(),
    );
  }
}

class PracticeNavigation extends StatefulWidget {
  @override
  State<PracticeNavigation> createState() => _PracticeNavigationState();
}

class _PracticeNavigationState extends State<PracticeNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Practice Navigation"),
        ),
        body: Center(
          
					// Set ElevatedButton
          child: ElevatedButton(

							// In onPressed, use navigator.push to navigate to SecondPage
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              }, 
              child: Text('Navigate to Second Page')
          ),
        )
    );
  }
}

// Set Page class name SecondPage
class SecondPage extends StatelessWidget {
	const SecondPage({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {

		// In build, Set appBar and body
    return Scaffold(

			// In AppBar, set automaticallyImplyLeading and title
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Second Page'),
      ),

			// Set ElevatedButton which navigates to first page when button pressed
      body: Center(
        child: ElevatedButton(

						// Use navigator.pop to navigate to FirstPage(PracticeNavigation)
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go back to First Page')
        ),
      ),
    );
  }
}
