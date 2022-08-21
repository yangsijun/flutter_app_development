import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeSingleChildScrollView(),
    );
  }
}

class PracticeSingleChildScrollView extends StatefulWidget {
  @override
  State<PracticeSingleChildScrollView> createState() => _PracticeSingleChildScrollViewsState();
}

class _PracticeSingleChildScrollViewsState extends State<PracticeSingleChildScrollView> {

  // Set ScrollController type variable
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice ScrollBar"),
      ),
        body: Center(

          // Set Scrollbar
          child: Scrollbar( 

						// Set thickness to 10
            thickness: 10,

						// Set thumbVisibility to true
            thumbVisibility: true,

						// Set controller to _scrollController
            controller: _scrollController,

						// Set child as ListView.Builder which show 30 items
            child: ListView.builder(
              controller: _scrollController,
              itemCount: 30,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Item $index"),
                );
              },
            ),

          ),

        )
    );
  }
}
