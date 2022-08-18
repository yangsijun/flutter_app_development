import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeListView(),
    );
  }
}

class PracticeListView extends StatefulWidget {
  @override
  State<PracticeListView> createState() => _PracticeListViewState();
}

class _PracticeListViewState extends State<PracticeListView> {

  // Set bool type List which length is 20 and filled with false
  List<bool> _isFavorited = List<bool>.filled(20, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Practice ListView'),
        ),
	
				// Set ListView.builder in body
        body: ListView.builder(

						// Set itemCount as 20
            itemCount: 20,

						// Set itemBuilder using ListTile
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
								// Set leading as IconButton
                leading: IconButton(
                  onPressed: () {
                    setState(() {
                      _isFavorited[index] = !_isFavorited[index];
                    });
                  },
                  icon: _isFavorited[index]
                    ? const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : const Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                    )
                ),

								// Set title as Text which show the index
                title: Text('ListTile ${index + 1}'),
              );
            }
        ),
    );
  }
}
