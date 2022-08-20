import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MyCustomScrollBehavior(),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice SingleChildScrollView"),
      ),
      body: Center(
        child: SingleChildScrollView(

          // Set scrollDirection
          scrollDirection: Axis.horizontal,

          // Set child as Row or as Column
          child: Row(
            children: [

              // Set 5 Containers with different colors
              Container(
                height: 150,
                width: 150,
                color: Colors.blue,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.yellow,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.green,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.purple,
              ),
            ],
          ),
        ),
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
