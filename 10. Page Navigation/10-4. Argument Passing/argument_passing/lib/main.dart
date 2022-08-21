import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => PracticeNamedRoute(),
        '/second': (context) => SecondPage(),
      },
      onGenerateRoute: (settings) {

      },
    );
  }
}

class PracticeNamedRoute extends StatefulWidget {
  @override
  State<PracticeNamedRoute> createState() => _PracticeNamedRouteState();
}

class _PracticeNamedRouteState extends State<PracticeNamedRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Practice Argument Passing"),
        ),
        body: Center(

          // Set ElevatedButton which navigates to second page when button pressed
          child: ElevatedButton(

							// Use navigator.pushNamed to navigate to SecondPage()
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/second',

									// Set arguments using class Arguments' constructor
                  arguments: Arguments('Hello World!', Colors.lightBlueAccent, 15.0)
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
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Arguments;

		// Set appBar and body
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),

			// In body, Set Container using arguments
      body: Center(
        child: Container(

					// Set Arguments type 'args' using ModalRoute.of(context)!.settings.arguments
          height: 150,
          width: 150,
          child: Center(child: Text(args.title, style: TextStyle(fontSize: args.fontSize))),
          color: args.color,          
        ),
      ),
    );
  }
}

// Set class Arguments' variables and their constructor
class Arguments {
  final String title;
  final Color color;
  final double fontSize;

  Arguments(this.title, this.color, this.fontSize);
}