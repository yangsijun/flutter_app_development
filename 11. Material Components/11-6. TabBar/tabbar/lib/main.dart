import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeTabBar(),
    );
  }
}

class PracticeTabBar extends StatefulWidget {
  @override
  State<PracticeTabBar> createState() => _PracticeTapBarState();
}

// Set 'with TickerProviderStateMixin' after State<PracticeTabBar> for getting Vsync
class _PracticeTapBarState extends State<PracticeTabBar> with TickerProviderStateMixin {

  // Set late TabController type _tabController
  late TabController _tabController;

  // Set override function initState for setting _tabController as TabController
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    //   initialIndex: 1,
    //   length: 3,
    //   child: Scaffold(
      return Scaffold(
        // Set AppBar's title, backgroundColor and bottom
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Practice TabBar'),

          // In bottom, set TabBar
          bottom: TabBar(

            // In TabBar, set controller and 3 tabs which has each icons
            controller: _tabController,
            tabs: const <Widget>[
              Tab(
                icon: Icon(Icons.search_outlined),
              ),
              Tab(
                icon: Icon(Icons.camera_alt_outlined),
              ),
              Tab(
                icon: Icon(Icons.add_alert_outlined),
              ),
            ],
          ),
        ),

        // Set body using TabBarView
        body: TabBarView(

          // Set TabBarView's controller and children as Center and Text
          controller: _tabController,
          children: const <Widget>[
            Center(
              child: Text('This is Search Page'),
            ),
            Center(
              child: Text('This is Camera Page'),
            ),
            Center(
              child: Text('This is Alarm Page'),
            ),
          ],

        ),
      // ),
    );
  }
}