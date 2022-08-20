import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeDraggable(),
    );
  }
}

class PracticeDraggable extends StatefulWidget {
  @override
  State<PracticeDraggable> createState() => _PracticeDraggableState();
}

class _PracticeDraggableState extends State<PracticeDraggable> {

  // Set int type variable to 0
  int acceptedData = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice Draggable"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            // Set Draggable<int>
            Draggable<int>(

              // Data is the value this Draggable stores
              data: 1,
              feedback: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                height: 100.0,
                width: 100.0,
              ),

              childWhenDragging: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                height: 100.0,
                width: 100.0,
                child: const Center(
                  child: Text('You are dragging now'),
                ),
              ),

              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow,
                ),
                height: 100.0,
                width: 100.0,
                child: const Center(
                  child: Text('Drag this'),
                ),
              ),

            ),

            // Set Draggable<int>
            DragTarget<int>(
              builder: (
                BuildContext context,
                List<dynamic> accepted,
                List<dynamic> rejected,
                ) {
                return Container(
                  height: 150,
                  width: 150,
                  color: Colors.blue,
                  child: Center(
                    child: Text('Drag in here: $acceptedData'),
                  ),
                );
              },

              onAccept: (int data) {
                setState(() {
                  acceptedData += data;
                });
							},
            ),
          ],
        ),
      )
    );
  }
}
