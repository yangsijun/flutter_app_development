import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeStatefulWidget(),
    );
  }
}

class PracticeStatefulWidget extends StatefulWidget {
  @override
  State<PracticeStatefulWidget> createState() => _PracticeStatefulWidgetState();

}

class _PracticeStatefulWidgetState extends State<PracticeStatefulWidget> {

  // Set int variable and initiaalize
  int count = 5;

  // Set override function initState
  @override
  void initState() {
    count = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Class'),
      ),

      body: Center(
        child: Text(
          count.toString(),
          style: TextStyle(fontSize: 20),
        ),
      ),

      // Set floatingActionButton to ElevatedButton
      floatingActionButton: ElevatedButton(

        // In onPressed, set setState function
        onPressed: () {
          setState(() {
            count++;
          });
        },

        child: Icon(Icons.add),
      ),
    );
  }
}