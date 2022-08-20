import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
			home: PracticeCustomListTile(),
    );
  }
}

class PracticeCustomListTile extends StatefulWidget {
  @override
  State<PracticeCustomListTile> createState() => _PracticeCustomListTileState();
}

class _PracticeCustomListTileState extends State<PracticeCustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice CustomListTile"),
      ),
        body: Center(
          child: Column(
            children: const [

							// Call two CustomListTiles in Column
              CustomListTile(
                leading: Icon(Icons.star),
                title: Text('Title Section 1'),
                subTitle: Text('Subtitle Section 1'),
                trailing: Icon(Icons.delete),
              ),
              CustomListTile(
                leading: Icon(Icons.favorite),
                title: Text('Title Section 2'),
                subTitle: Text('Subtitle Section 2'),
                trailing: Icon(Icons.delete),
              ),

            ],
          ),
        )
    );
  }
}

// Set Class CustomListTile as StatelessWidget
class CustomListTile extends StatelessWidget{

  // Set 4 parameters
  final Widget leading;
  final Widget title;
  final Widget subTitle;
  final Widget trailing;

  // Set Constructor for getting parameter
  const CustomListTile({
    Key? key,
    required this.leading,
    required this.title,
    required this.subTitle,
    required this.trailing
  });

  @override
  Widget build(BuildContext context) {

    // Set CustomListTitle using Padding, Row, Container, Column and Expanded
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 70,
            child: Center(child: leading),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title,
              subTitle,
            ],
          ),
          Expanded(child: Container()),
          Container(
            width: 50,
            child: Center(child: trailing),
          ),
        ],
      ),
    );

  }
}
