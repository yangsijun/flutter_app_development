import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeScaffold(),
    );
  }
}

class PracticeScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set Scaffold's backgroundColor
      backgroundColor: Colors.yellowAccent,

      // Set AppBar and its title
      appBar: AppBar(
        title: Text('This is AppBar'),
      ),

      // Set body as Center and in child set Text
      body: Center(
        child: Text('This is body'),
      ),

      // Set floatingActionButton and in child set Text
      floatingActionButton: ElevatedButton(
        onPressed: () {
          // (This function call when you pressed the button)
        },
        // child: Text('FAB'),
        child: Icon(Icons.navigation)
      ),
    );
  }
}