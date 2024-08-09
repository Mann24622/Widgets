import 'package:flutter/material.dart';

class IntrinsicHeightPage extends StatelessWidget {
  const IntrinsicHeightPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intrinsic Height'),
      ),
      body: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.blue,
                  width: 100,
                  padding: EdgeInsets.all(8.0),
                  child: Text('Box 1'),
                ),
                Container(
                  color: Colors.green,
                  width: 150,
                  padding: EdgeInsets.all(8.0),
                  child: Text('Box 2\nwith\nmultiple\nlines'),
                ),
                Container(
                  color: Colors.orange,
                  width: 75,
                  padding: EdgeInsets.all(8.0),
                  child: Text('Box 3'),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          IntrinsicWidth(
            child: Column(
              children: [
                Container(
                  color: Colors.purple,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'This is a really long text that should wrap to multiple lines',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  color: Colors.red,
                  padding: EdgeInsets.all(8.0),
                  child: Text('Short text'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IntrinsicHeightPage(),
  ));
}
