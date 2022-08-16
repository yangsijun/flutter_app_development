import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeFloatingActionButton(),
    );
  }
}

class PracticeFloatingActionButton extends StatefulWidget {
  @override
  State<PracticeFloatingActionButton> createState() => _PracticeFloatingActionButtonState();
}

class _PracticeFloatingActionButtonState extends State<PracticeFloatingActionButton> {
  
	// Set int type variable
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practive FAB'),
      ),
      
			// Set Text in Center
      body: Center(
        child: Text(count.toString()),
      ),

      // Set FloatingActionButton
      floatingActionButton: FloatingActionButton(

        // Set onPressed function using setState
        onPressed: () {
          setState(() {
            count++;
          });
        },

        // Set an Icon to FloatingActionButton's child
        child: Icon(Icons.add),

        // Set FloatingActionButton's backgroundColor
        backgroundColor: Colors.green,
      ),

      // Set FAB location
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
