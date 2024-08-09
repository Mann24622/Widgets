import 'package:flutter/material.dart';

void main() => runApp(ClipRectApp());

class ClipRectApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClipRectPage(),
    );
  }
}

class ClipRectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipRect Example'),
      ),
      body: Center(
        child: ClipRect(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Align(
            alignment: Alignment.topLeft,
            widthFactor: 0.5,
            heightFactor: 0.5,
            child: Container(
              width: 500.0,
              height: 300.0,
              color: Colors.blue,
              child: Center(

              ),
            ),
          ),
        ),
      ),
    );
  }
}
