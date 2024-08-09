import 'package:flutter/material.dart';

void main() => runApp(WrapApp());

class WrapApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WrapPage(),
    );
  }
}

class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          verticalDirection: VerticalDirection.down,
          crossAxisAlignment: WrapCrossAlignment.center,
          clipBehavior: Clip.antiAlias,
          spacing: 8.0, // gap between adjacent chips
          runSpacing: 4.0, // gap between lines
          children: <Widget>[
            Chip(
              label: Text('Chip 1'),
            ),
            Chip(
              label: Text('Chip 2'),
            ),
            Chip(
              label: Text('Chip 3'),
            ),
            Chip(
              label: Text('Chip 4'),
            ),
            Chip(
              label: Text('Chip 5'),
            ),
            Chip(
              label: Text('Chip 6'),
            ),
          ],
        ),
      ),
    );
  }
}
