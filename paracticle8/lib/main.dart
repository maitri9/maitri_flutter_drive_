//58. Write a program you have taken three seek bar controls. From three Seekbar which Seekbar value changed the background color of device will be changed.

import 'package:flutter/material.dart';

void main() {
  runApp(ChangeBackgroundColorApp());
}

class ChangeBackgroundColorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Change Background Color App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeBackgroundColorScreen(),
    );
  }
}

class ChangeBackgroundColorScreen extends StatefulWidget {
  @override
  _ChangeBackgroundColorScreenState createState() =>
      _ChangeBackgroundColorScreenState();
}

class _ChangeBackgroundColorScreenState
    extends State<ChangeBackgroundColorScreen> {
  double _redValue = 0;
  double _greenValue = 0;
  double _blueValue = 0;

  void _changeBackgroundColor() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Color.fromRGBO(
      _redValue.toInt(),
      _greenValue.toInt(),
      _blueValue.toInt(),
      1,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Change Background Color'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: _redValue,
              min: 0,
              max: 255,
              onChanged: (value) {
                setState(() {
                  _redValue = value;
                });
              },
            ),
            Slider(
              value: _greenValue,
              min: 0,
              max: 255,
              onChanged: (value) {
                setState(() {
                  _greenValue = value;
                });
              },
            ),
            Slider(
              value: _blueValue,
              min: 0,
              max: 255,
              onChanged: (value) {
                setState(() {
                  _blueValue = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: _changeBackgroundColor,
              child: Text('Change Background'),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 200,
              color: backgroundColor,
            ),
          ],
        ),
      ),
    );
  }
}
