import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeHero(),
    );
  }
}

class PracticeHero extends StatefulWidget {
  @override
  State<PracticeHero> createState() => _PracticeHeroState();
}

class _PracticeHeroState extends State<PracticeHero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practice Hero'),
      ),

      // Set body as GestureDetector which Navigate to HeroPage when button pressed in Center
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HeroPage())
            );
          },

					// Set Hero in GestureDetector which tag is 'This is Hero Container'
          child: Hero(
            tag: 'This is Hero Container',
            child: Container(
							// Set width and height as 50
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
          ),
        ),
      )
    );
  }
}

// Set class name 'HeroPage'
class HeroPage extends StatelessWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

			// Set AppBar which title is Text
      appBar: AppBar(
        title: const Text('Hero Page'),
      ),

			// Set body as Hero in Center which tag is 'This is Hero Container'
      body: Center(
        child: Hero(
          tag: 'This is Hero Container',
          child: Container(

            // Set width and height as 200
            width: 200,
            height: 200,
            color: Colors.blue,
          )
        ),
      ),
    );
  }
}
