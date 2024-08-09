import 'package:flutter/material.dart';

class Popup extends StatelessWidget {
  const Popup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popup Menu Button'),
      ),
      body: Center(
        child: PopupMenuButton<String>(
          splashRadius: 30.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadowColor: Colors.cyanAccent,
          color: Colors.amberAccent,
          onSelected: (String result) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('You selected: $result')),
            );
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'One',
              child: Text('One'),
            ),
            const PopupMenuItem<String>(
              value: 'Two',
              child: Text('Two'),
            ),
            const PopupMenuItem<String>(
              value: 'Three',
              child: Text('Three'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Popup(),
  ));
}
