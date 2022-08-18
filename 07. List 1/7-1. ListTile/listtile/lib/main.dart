import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeListTile(),
    );
  }
}

class PracticeListTile extends StatefulWidget {
  @override
  State<PracticeListTile> createState() => _PracticeListTileState();
}

class _PracticeListTileState extends State<PracticeListTile> {

  // Set bool type variable to false
	bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice ListTile'),
        ),
        body: Column(
          children: [

						// Set ListTile
            const ListTile(
              leading: Icon(Icons.favorite),
              title: Text('ListTile 1'),
              subtitle: Text('You can add subtitle'),
              trailing: Icon(Icons.delete),
            ),

            // Set ListTile as above
						ListTile(
              leading:Icon(Icons.star),
              title: Text('ListTile 2'),
              subtitle: Text('You can select ListTile'),
              trailing: Icon(Icons.delete),
              selected: _isSelected,

              // Set selectedColor and selectedTileColor as you want
              selectedColor: Colors.black,
              selectedTileColor: Colors.grey.shade300,

              // Set onTap function which change _isSelected as opposite
              onTap: () {
                setState(() {
                  _isSelected = !_isSelected;
                });
              }
            ),

            
          ],
        )
    );
  }
}
