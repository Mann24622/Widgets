import 'package:flutter/material.dart';

class InkwellPage extends StatelessWidget {
  const InkwellPage({Key? key}) : super(key: key);

  void handleLongPress() {
    // Handle long press
    print('Long press detected!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inkwell'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            // Handle tap
            print('Tap detected!');
          },
          focusColor: Colors.pink,
          onLongPress: handleLongPress,
          borderRadius: BorderRadius.circular(20),
          hoverColor: Colors.cyanAccent,
          child: Container(
            height: 150,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: Center(
              child: Text(
                'Tap me!',
                style: TextStyle(fontSize: 20),
              ),
              
            ),
          ),
        ),
      ),
    );
  }
}
