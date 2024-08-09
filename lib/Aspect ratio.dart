import 'package:flutter/material.dart';

class AspectRatioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aspect Ratio Example'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          alignment: Alignment.center,
          width: double.infinity,
          height: 100.0,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AspectRatioPage(),
  ));
}
