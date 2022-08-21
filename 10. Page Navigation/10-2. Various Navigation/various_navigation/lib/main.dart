import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeVariousNavigation(),
    );
  }
}

class PracticeVariousNavigation extends StatefulWidget {
  @override
  State<PracticeVariousNavigation> createState() => _PracticeVariousNavigationState();
}

class _PracticeVariousNavigationState extends State<PracticeVariousNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Practice Various Navigation"),
        ),
        body: Center(
          
					// Set ElevatedButton
          child: ElevatedButton(

							// In onPressed, use navigator.push to navigate to SecondPage
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage())
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

		// Set appBar and body
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),

			// In body, Set ElevatedButton
      body: Center(
        child: ElevatedButton(

						// In onPressed, use navigator.push to navigate to ThirdPage
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => ThirdPage()))
              );
            },

            child: Text('Navigate to Third Page')
        ),
      ),
    );
  }
}

// Set Page class name ThirdPage
class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

		// Set appBar and body
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),

      body: Center(

				// Set two ElevatedButton in Column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

						// In first ElevatedButton, use pushAndRemoveUntil
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => PracticeVariousNavigation()), (route) => false
                );
              },
              child: Text('Go back to First Page using pushAndRemoveUntil')
            ),

						// In Second ElevatedButton, use pushReplacement
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage())
                );
              },
              child: Text('Go back to Second Page using pushReplacement')
            ),
          ],
        ),
      ),
    );
  }
}
