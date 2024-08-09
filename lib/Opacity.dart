import 'package:flutter/material.dart';

void main() => runApp(OpacityApp());

class OpacityApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OpacityPage(),
    );
  }
}

class OpacityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opacity Example'),
      ),
      body: Center(
        child: Opacity(

          opacity: 0.5,
          child: Container(

            clipBehavior: Clip.antiAlias,
           transformAlignment: Alignment.bottomCenter,

            width: 200.0,
            height: 200.0,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Opacity',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
