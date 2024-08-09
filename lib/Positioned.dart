import 'package:flutter/material.dart';

class PositionedPage extends StatelessWidget {
  const PositionedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Positioned'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.grey[300],
          child: Stack(
            children: [
              Positioned(


                left: 50,
                top: 50,
                width: 200,
                height: 100,
                child: Container(
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      'Positioned Widget',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
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
    home: PositionedPage(),
  ));
}
