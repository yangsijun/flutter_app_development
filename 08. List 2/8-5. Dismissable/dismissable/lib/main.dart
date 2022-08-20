import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeDismissible(),
    );
  }
}

class PracticeDismissible extends StatefulWidget {
  @override
  State<PracticeDismissible> createState() => _PracticeDismissibleState();
}

class _PracticeDismissibleState extends State<PracticeDismissible> {

  // Set List<int> and its lengths 
  final List<int> _items = List<int>.generate(20, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practice Dismissible"),
      ),

      // Set Listview.builder for showing items
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          
          // Set Dismissible
          return Dismissible(
            // direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              child: ListTile(
                title: Text('dismiss item ${_items[index]}'),
              ),
            ),

            key: ValueKey<int>(_items[index]),
            onDismissed: (DismissDirection direction) {
              setState(() {
                _items.removeAt(index);
              });
            },

            child: ListTile(
              title: Text(
                'Item ${_items[index]}',
              ),
            ),

          );
        },
      )
    );
  }
}
