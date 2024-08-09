import 'package:flutter/material.dart';

void main() => runApp(ChipApp());

class ChipApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChipPage(),
    );
  }
}

class ChipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chip Example'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Chip(
                  label: Text('Simple Chip'),
                ),
                SizedBox(height: 20),
                InputChip(
                  label: Text('Input Chip'),
                  onSelected: (bool value) {
                    print('Input Chip selected: $value');
                  },
                ),

              
                SizedBox(height: 20),
                ActionChip(
                  label: Text('Action Chip'),
                  onPressed: () {
                    print('Action Chip pressed');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
