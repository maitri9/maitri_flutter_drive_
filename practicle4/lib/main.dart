import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home_screen(),
    );
  }
}

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  late Random _random = Random();
  int index = 0;
  List Click = [
    Colors.white,
    Colors.blue,
    Colors.pink,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.orange,
  ];
  void change() {
    setState(
      () => index = _random.nextInt(5),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("color change app"),
      ),
      body: Container(
        color: Click[index],
        // height: 500,
        // width: 500,
        child: Column(
          children: [
            Center(
              child: Text("hello"),
            ),
            ElevatedButton(
              onPressed: () {
                change();
              },
              child: Text("+"),
            ),
          ],
        ),
      ),
    );
  }
}
