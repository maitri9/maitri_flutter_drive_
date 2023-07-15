import 'package:flutter/material.dart';
import 'package:practicle7/Home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Color_select(),
    );
  }
}
