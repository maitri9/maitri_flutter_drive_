import 'package:flutter/material.dart';

void main() {
  runApp(ChangeFontSizeApp());
}

class ChangeFontSizeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Change Font Size App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: ChangeFontSizeScreen(),
    );
  }
}

class ChangeFontSizeScreen extends StatefulWidget {
  @override
  _ChangeFontSizeScreenState createState() => _ChangeFontSizeScreenState();
}

class _ChangeFontSizeScreenState extends State<ChangeFontSizeScreen> {
  double _fontSize = 16.0;

  void _increaseFontSize() {
    setState(() {
      _fontSize += 2.0;
    });
  }

  void _decreaseFontSize() {
    setState(() {
      if (_fontSize > 2.0) {
        _fontSize -= 2.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Font Size'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Maitri Patel',
              style: TextStyle(fontSize: _fontSize),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _increaseFontSize,
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: _decreaseFontSize,
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
