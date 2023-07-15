import 'package:flutter/material.dart';

void main() {
  runApp(ImageViewApp());
}

class ImageViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image View App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageViewScreen(),
    );
  }
}

class ImageViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image View'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/mini1.jpeg',
                    width: 100, height: 100),
                Image.asset('assets/images/mini2.jpeg',
                    width: 100, height: 100),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Gallary',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/mini3.jpeg',
                    width: 100, height: 100),
                Image.asset('assets/images/mini4.jpeg',
                    width: 100, height: 100),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
