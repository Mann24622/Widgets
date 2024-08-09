import 'package:flutter/material.dart';

void main() => runApp(ClipOvalApp());

class ClipOvalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClipOvalPage(),
    );
  }
}

class ClipOvalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipOval Example'),
      ),
      body: Center(
        child: ClipOval(
          clipBehavior: Clip.antiAliasWithSaveLayer,

          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.blue,
            child: Center(
              child: Text(
                'ClipOval',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
