import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeMaterialBanner(),
    );
  }
}

class PracticeMaterialBanner extends StatefulWidget {
  @override
  State<PracticeMaterialBanner> createState() => _PracticeMaterialBannerState();
}

class _PracticeMaterialBannerState extends State<PracticeMaterialBanner> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practice MaterialBanner'),
      ),

      // Set MaterialBanner in body
      body: MaterialBanner(

				// Set padding, elevation, backgroundColor and contentTextStyle as you want
				// Set content as Text, leading as Icon, actions as two TextButton
        padding: const EdgeInsets.all(20),
        content: const Text('This is Materail Banner'),
        elevation: 5,
        contentTextStyle: const TextStyle(color: Colors.purple),
        leading: const Icon(Icons.agriculture_outlined),
        backgroundColor: Colors.white30,
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: Text('Open'),
          ),
          TextButton(
            style: TextButton.styleFrom(primary: Colors.red),
            onPressed: () {
              // Set hideCurrentMaterialBanner()
              ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
            },
            child: Text('Cancel'),
          ),
        ],
        
      ),
    );
  }
}
