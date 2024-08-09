import 'package:flutter/material.dart';

class FractionallySizedBoxExample extends StatelessWidget {
  const FractionallySizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fractionally Sized Box Example'),
      ),
      body: Center(
        child: Container(
          color: Colors.grey[300],
          width: 300, // Width of the parent container
          height: 300, // Height of the parent container
          child: FractionallySizedBox(


            widthFactor: 0.5, // 50% of the parent width
            heightFactor: 0.5,
            // 50% of the parent height
            alignment: Alignment.center, // Center the child within the parent
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                ),
              ),
              
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: FractionallySizedBoxExample(),
  ));
}
