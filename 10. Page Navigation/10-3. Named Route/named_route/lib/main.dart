import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Set initialRoute as '/'
      initialRoute: '/',

      // Set routes name: PracticeNamedRoute as '/', SecondPage as '/second', ThirdPage as '/third'
      routes: {
        '/': (context) => PracticeNamedRoute(),
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(),
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
          title: Text("Practice NamedRoute"),
        ),
        body: Center(

          // Set ElevatedButton
          child: ElevatedButton(

							// Use navigator.pushNamed to navigate to SecondPage()
              onPressed: () {
                Navigator.pushNamed(context, '/second');
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

		// Set appBar and body
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),

			// In body, Set ElevatedButton which navigates to ThirdPage when button pressed
      body: Center(
        child: ElevatedButton(

						// Use navigator.pushNamed to navigate to ThirdPage
            onPressed: () {
              Navigator.pushNamed(context, '/third');
            },
            child: Text('Navigate to Third Page')
        ),
      ),
    );
  }
}

// Set Page class name ThirdPage
class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

		// Set appBar and body
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),

			// In body, Set ElevatedButton which navigates to PracticeNamedRoute when button pressed
      body: Center(
        child: ElevatedButton(

					// Use navigator.pushNamedAndRemoveUntil to navigate to PracticeNamedRoute
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/',
              (route) => false
            );
          },
          child: Text('Go back to First Page'),
        ),
      ),
    );
  }
}
