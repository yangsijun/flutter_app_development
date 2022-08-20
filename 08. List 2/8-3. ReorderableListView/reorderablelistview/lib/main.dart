import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeReorderableListView(),
    );
  }
}

class PracticeReorderableListView extends StatefulWidget {
  @override
  State<PracticeReorderableListView> createState() => _PracticeReorderableListViewState();
}

class _PracticeReorderableListViewState extends State<PracticeReorderableListView> {

  // Set List<int> using List.generate() and its lengths to 20
  final List<int> _items = List<int>.generate(20, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice ReorderableListView"),
      ),
      body: ReorderableListView(

        // Set padding as symmetric
        padding: const EdgeInsets.symmetric(horizontal: 20),

        // Set children using _items for loop
        children: <Widget>[
          for (int i = 0; i < _items.length; i++)
						// Set Card
            Card(
              elevation: 5,
              key: Key('$i'),
              child: ListTile(
                title: Text('Item ${_items[i]}'),
              ),
            ),

        ],

        // Set onReorder function using setState
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            
						// If newIndex is bigger than oldIndex, minus 1 from newIndex
            if (oldIndex < newIndex) {
              newIndex--;
            }

						// Change item using List function
            final int item = _items.removeAt(oldIndex);
            _items.insert(newIndex, item);
          });
        },

      )
    );
  }
}
