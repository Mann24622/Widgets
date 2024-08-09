import 'package:flutter/material.dart';

class LimitedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('LimitedBox'),
        ),
        body: Container(
            child: ListView(
          children: [
            LimitedBox(
              maxHeight: 200,
              child: Container(
                color: Colors.deepOrangeAccent,
              ),
            ),
            LimitedBox(
              maxHeight: 200,
              child: Container(
                color: Colors.white,
              ),
            ),
            LimitedBox(
              maxHeight: 200,
              child: Container(
                color: Colors.green,
              ),
            ),
          ],
        )));
  }
}
