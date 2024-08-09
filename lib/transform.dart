import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TransformPage(),
    );
  }
}

class TransformPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transform Example'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          height: 200,
          width: 200,
          child: Transform(
            
            alignment: Alignment.topLeft,
            transform: Matrix4.skewY(0.3),
            child: Container(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
