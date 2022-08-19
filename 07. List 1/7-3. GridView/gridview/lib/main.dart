import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeGridView(),
    );
  }
}

class PracticeGridView extends StatefulWidget {
  @override
  State<PracticeGridView> createState() => _PracticeGridViewState();
}

class _PracticeGridViewState extends State<PracticeGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice GridView'),
        ),
        
				// Set GridView.builder in body
        body: GridView.builder(

						// Set gridDelegate as SliverGridDelegateWithFixedCrossAxisCount
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1 / 1,
            ),

						// Set itemCount as 20
            itemCount: 20,

						// Set itemBuilder using Container in padding
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  color: Colors.grey,
                  child: Center(child: Text('Item ${index + 1}')),
                ),
              );
            }

        )


    );
  }
}
