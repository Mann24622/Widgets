import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: Center(
        child: Card(

          color: Colors.cyanAccent,
          elevation: 5,
          shadowColor: Colors.pinkAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album, size: 50),
                title: Text('Card Title', style: TextStyle(fontSize: 20)),
                subtitle: Text('Card Subtitle'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('ACTION 1'),
                    onPressed: () {
                      // Handle the press
                    },
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    child: const Text('ACTION 2'),
                    onPressed: () {
                      // Handle the press
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Cards(),
  ));
}
