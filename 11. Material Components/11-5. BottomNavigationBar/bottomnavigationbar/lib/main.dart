import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeBottomNavigationBar(),
    );
  }
}

class PracticeBottomNavigationBar extends StatefulWidget {
  @override
  State<PracticeBottomNavigationBar> createState() => _PracticeBottomNavigationBarState();
}

class _PracticeBottomNavigationBarState extends State<PracticeBottomNavigationBar> {

  // Set int type variable to 1
  int _selectedIndex = 1;

  // Set static const List<Widget> type variable and set BodyPage's argument 
  static  const List<Widget> _buildBody = <Widget>[
    BodyPage(title: 'Account Page'),
    BodyPage(title: 'Home Page'),
    BodyPage(title: 'Setting Page'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practice BottomNavigationBar"),
      ),

      // Set body using _buildBody
      body: _buildBody.elementAt(_selectedIndex),

      // Set bottomNavigationBar using BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
				// Set items and currentIndex
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,

				// Set backgroundColor and selectedItemColor as you want
        // backgroundColor: Colors.grey,
        selectedItemColor: Colors.white,

				// Set onTap function as _onTapped
				onTap: _onTapped,

      ),
    );
  }

  // Set _onTapped function which changes _selectedIndex as index
  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}

// Set class 'BodyPage' which has argument(title)
class BodyPage extends StatelessWidget {
  final String title;
  const BodyPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

		// Set Text for title in Center
    return Center(
      child: Text('This is ${title}'),
    );

  }
}
