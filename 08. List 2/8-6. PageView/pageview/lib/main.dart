import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      home: PracticePageView(),
    );
  }
}

class PracticePageView extends StatefulWidget {
  @override
  State<PracticePageView> createState() => _PracticePageViewState();
}

class _PracticePageViewState extends State<PracticePageView> {

  // Set PageController
  final PageController _pageController = PageController(initialPage: 0, viewportFraction: 1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice PageView"),
      ),

      // Set PageView.builder
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            // you can add function which called when page changed

          });
        },
        itemCount: 5,
        itemBuilder: (context, index) {
					// In Container, use Colors.blue.withOpacity for setting color
          return Container(
            color: Colors.blue.withOpacity(index * 0.2),
            child: Center(
              child: Text(
                'Page: ${index + 1}',
                style: TextStyle(fontSize: 30),
              ),
            ),
          );
        },
      )
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  const MyCustomScrollBehavior();

  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.mouse,
  }..addAll(super.dragDevices);
}
