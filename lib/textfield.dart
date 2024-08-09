import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  const Textfield({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a TextEditingController
    final TextEditingController _controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Textfield'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _controller, // Assigning the controller
          autofillHints: Iterable.empty(),
          clipBehavior: Clip.antiAlias,
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,


          maxLength: 30,
          cursorRadius: Radius.circular(20),
          autocorrect: true,
          autofocus: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Textfield(),
  ));
}
