import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeLinearProgressIndicator(),
    );
  }
}

class PracticeLinearProgressIndicator extends StatefulWidget {
  @override
  State<PracticeLinearProgressIndicator> createState() => _PracticeLinearProgressIndicatorState();
}

class _PracticeLinearProgressIndicatorState extends State<PracticeLinearProgressIndicator> {

  // Set ContainerState type variable
  ContainerState _containerState = ContainerState(100, 100, Colors.blue, Alignment.center, 'Not Tapped');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practice AnimatedContainer'),
      ),

      // Set body as GestureDetector
      body: GestureDetector(

				// Set onTap, onLongPress and onDoubleTap's function, and change _containerState using ContainerState's constructor
        onTap: () {
          setState(() {
            _containerState = ContainerState(200, 200, Colors.yellow, Alignment.center, 'Tapped');
          });
        },
        onLongPress: () {
          setState(() {
            _containerState = ContainerState(80, 200, Colors.red, Alignment.bottomCenter, 'Long Pressed');
          });
        },
        onDoubleTap: () {
          setState(() {
            _containerState = ContainerState(200, 80, Colors.green, Alignment.topCenter, 'Double Tapped');
          });
        },

        // Set child as AnimatedContainer
        child: Center(
          child: AnimatedContainer(

						// Set width, height, color and alignment
            width: _containerState.width,
            height: _containerState.height,
            color: _containerState.color,
            alignment: _containerState.alignment,

						// Set duration and curve 
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,

						// Set child's Text using _containerState
						child: Center(child: Text(_containerState.text)),
          ),
        ),
      )
    );
  }
}

// Set ContainerState for changing state of AnimatedContainer
class ContainerState {

	// Set ContainerState variable
  final double width;
  final double height;
  final Color color;
  final Alignment alignment;
  final String text;

  ContainerState(this.width, this.height, this.color, this.alignment, this.text);
}