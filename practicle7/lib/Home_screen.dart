//Q57 Write a program in android display screen color which the Color will be select from the radio button.

import 'package:flutter/material.dart';

void main() {
  runApp(ColorSelectionApp());
}

class ColorSelectionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Selection App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //  home: Color_select(),
    );
  }
}

class Color_select extends StatefulWidget {
  @override
  Color_select createState() => Color_select();
}

class Color_select extends State<Color_select> {
  Color _selectedColor = Colors.white;

  void _selectColor(Color color) {
    setState(() {
      _selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Selection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile<Color>(
              title: Text('Red'),
              value: Colors.red,
              groupValue: _selectedColor,
              onChanged: _selectColor,
            ),
            RadioListTile<Color>(
              title: Text('Green'),
              value: Colors.green,
              groupValue: _selectedColor,
              onChanged: _selectColor,
            ),
            RadioListTile<Color>(
              title: Text('Blue'),
              value: Colors.blue,
              groupValue: _selectedColor,
              onChanged: _selectColor,
            ),
            Container(
              width: 200,
              height: 200,
              color: _selectedColor,
            ),
          ],
        ),
      ),
    );
  }
}
