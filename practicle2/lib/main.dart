import 'package:flutter/material.dart';

void main() {
  runApp(NumberRangeApp());
}

class NumberRangeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Range App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NumberInputScreen(),
    );
  }
}

class NumberInputScreen extends StatefulWidget {
  @override
  _NumberInputScreenState createState() => _NumberInputScreenState();
}

class _NumberInputScreenState extends State<NumberInputScreen> {
  TextEditingController _firstNumberController = TextEditingController();
  TextEditingController _secondNumberController = TextEditingController();

  void _navigateToNumberList() {
    int firstNumber = int.tryParse(_firstNumberController.text);
    int secondNumber = int.cd(_secondNumberController.text);

    if (firstNumber != null && secondNumber != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NumberListScreen(
            firstNumber: firstNumber,
            secondNumber: secondNumber,
          ),
        ),
      );
    } else {
      // Show an error message if the input is invalid
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Invalid Input'),
          content: Text('Please enter valid numbers.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Range Input'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _firstNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter first number',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _secondNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter second number',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _navigateToNumberList,
              child: Text('Show Number List'),
            ),
          ],
        ),
      ),
    );
  }
}

class NumberListScreen extends StatelessWidget {
  final int firstNumber;
  final int secondNumber;

  NumberListScreen({required this.firstNumber, required this.secondNumber});

  @override
  Widget build(BuildContext context) {
    List<int> numberList = List<int>.generate(
      secondNumber - firstNumber - 1,
      (index) => firstNumber + index + 1,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Number List'),
      ),
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(numberList[index].toString()),
          );
        },
      ),
    );
  }
}
