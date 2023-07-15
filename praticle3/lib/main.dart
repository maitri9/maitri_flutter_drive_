import 'package:flutter/material.dart';

void main() {
  runApp(MathOperationApp());
}

class MathOperationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Math Operation App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MathOperationScreen(),
    );
  }
}

class MathOperationScreen extends StatefulWidget {
  @override
  _MathOperationScreenState createState() => _MathOperationScreenState();
}

class _MathOperationScreenState extends State<MathOperationScreen> {
  TextEditingController _number1Controller = TextEditingController();
  TextEditingController _number2Controller = TextEditingController();
  String _result = '';

  MathOperation _selectedOperation = MathOperation.addition;

  void _calculateResult() {
    double number1 = double.tryParse(_number1Controller.text);
    double number2 = double.tryParse(_number2Controller.text);

    if (number1 != null && number2 != null) {
      double result;

      switch (_selectedOperation) {
        case MathOperation.addition:
          result = number1 + number2;
          break;
        case MathOperation.subtraction:
          result = number1 - number2;
          break;
        case MathOperation.multiplication:
          result = number1 * number2;
          break;
        case MathOperation.division:
          result = number1 / number2;
          break;
      }

      setState(() {
        _result = result.toString();
      });
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
        title: Text('Math Operation'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: MathOperation.addition,
                  groupValue: _selectedOperation,
                  onChanged: (MathOperation? value) {
                    setState(() {
                      _selectedOperation = value!;
                    });
                  },
                ),
                Text('Addition'),
                Radio(
                  value: MathOperation.subtraction,
                  groupValue: _selectedOperation,
                  onChanged: (MathOperation? value) {
                    setState(() {
                      _selectedOperation = value!;
                    });
                  },
                ),
                Text('Subtraction'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: MathOperation.multiplication,
                  groupValue: _selectedOperation,
                  onChanged: (MathOperation? value) {
                    setState(() {
                      _selectedOperation = value!;
                    });
                  },
                ),
                Text('Multiplication'),
                Radio(
                  value: MathOperation.division,
                  groupValue: _selectedOperation,
                  onChanged: (MathOperation? value) {
                    setState(() {
                      _selectedOperation = value!;
                    });
                  },
                ),
                Text('Division'),
              ],
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _number1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter number 1',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _number2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter number 2',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _calculateResult,
              child: Text('Calculate'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Result: $_result',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}

enum MathOperation {
  addition,
  subtraction,
  multiplication,
  division,
}
