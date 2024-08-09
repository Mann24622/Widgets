import 'package:flutter/material.dart';

class TextButtonPage extends StatefulWidget {
  const TextButtonPage({super.key});

  @override
  _TextButtonPageState createState() => _TextButtonPageState();
}

class _TextButtonPageState extends State<TextButtonPage> {
  bool isHovering = false;
  bool isLongPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextButton'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(

              isSemanticButton: false,
              autofocus: true,
              onLongPress: () {
                setState(() {
                  isLongPressed = true;
                  print('print long press');
                });
                // Implement long press action here
              },
              onHover: (hovering) {
                setState(() {
                  isHovering = hovering;
                });
              },
              onPressed: () {
                setState(() {
                  isLongPressed = true;
                });
              },
              child: Text(
                'hello good morning',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: isLongPressed
                      ? Colors.red
                      : (isHovering ? Colors.blue : Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
