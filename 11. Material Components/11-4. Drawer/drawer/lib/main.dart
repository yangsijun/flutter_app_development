import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeDrawer(),
    );
  }
}

class PracticeDrawer extends StatefulWidget {
  @override
  State<PracticeDrawer> createState() => _PracticeDrawerState();
}

class _PracticeDrawerState extends State<PracticeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Practice Drawer"),
        ),
        body: const Center(
          child: Text('Press Appbar\'s left button'),
        ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[

            // Set DrawerHeader, BoxDecoration and set child as Text
            // const DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //   ),
            //   child: Text(
            //     'This is Drawer Header',
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 24,
            //     ),
            //   ),
            // ),

            // Set UserAccountsDrawerHeader's currentAccountPicture, accountName, accountEmail and onDetailsPressed
            UserAccountsDrawerHeader(
              // currentAccountPicture: Icon(Icons.account_circle, size: 50),
              currentAccountPicture: ClipOval(
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2016/04/22/04/57/graduation-1345143__340.png',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              accountName: Text('Peter'),
              accountEmail: Text('1234@gmail.com'),
              onDetailsPressed: () {
                // (You can add detail page)
              },
            ),

            // Set two ListTiles in Drawer's ListView
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Add ListTile 1'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Add ListTile 2'),
            ),

          ],
        ),
      ),
    );
  }
}
