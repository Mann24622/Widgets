import 'package:flutter/material.dart';

class OutlinedButtonPage extends StatefulWidget {
  const OutlinedButtonPage({super.key});

  @override
  _OutlinedButtonPageState createState() => _OutlinedButtonPageState();
}

class _OutlinedButtonPageState extends State<OutlinedButtonPage> {
  late FocusNode _buttonFocusNode;

  @override
  void initState() {
    super.initState();
    _buttonFocusNode = FocusNode();
    _buttonFocusNode.addListener(_handleFocusChange); // Adding listener for focus changes
  }

  @override
  void dispose() {
    _buttonFocusNode.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    if (_buttonFocusNode.hasFocus) {
      // Handle focus gained
      print('Button focused');
    } else {
      // Handle focus lost
      print('Button unfocused');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Outlined Button'),
      ),
      body: Center(
        child: OutlinedButton(

          onFocusChange: (hasFocus) {
            setState(() {
              // Handle focus change state if needed
            });
            _handleFocusChange(); // Call your custom focus change handler
          },
          focusNode: _buttonFocusNode, // Assign the FocusNode
          autofocus: true, // Optionally set autofocus
          clipBehavior: Clip.antiAlias, // Set clipBehavior if needed
          onPressed: () {
            // Implement on pressed action here
          },
          child: const Text(
            'hello gujju Boys',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Request focus for the button
          _buttonFocusNode.requestFocus();
        },
        child: const Icon(Icons.touch_app),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: OutlinedButtonPage(),
  ));
}
