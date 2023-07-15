import 'package:flutter/material.dart';

void main() {
  runApp(ReverseNumberApp());
}

class ReverseNumberApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reverse Number App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ReverseNumberScreen(),
    );
  }
}

class ReverseNumberScreen extends StatefulWidget {
  @override
  _ReverseNumberScreenState createState() => _ReverseNumberScreenState();
}

class _ReverseNumberScreenState extends State<ReverseNumberScreen> {
  TextEditingController _numberController = TextEditingController();
  String _reversedNumber = '';

  void _reverseNumber() {
    String inputNumber = _numberController.text;
    String reversedNumber = inputNumber.split('').reversed.join();
    setState(() {
      _reversedNumber = reversedNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reverse Number'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter a number',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _reverseNumber,
              child: Text('Reverse'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Reversed Number: $_reversedNumber',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
