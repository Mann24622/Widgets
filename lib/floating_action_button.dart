import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  const FloatingButton({super.key});

  @override
  _FloatingButtonState createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Button'),
      ),
      body: const Center(
        child: Text('Your Content Here'),
      ),
      floatingActionButton: FloatingActionButton(
        focusElevation: double.maxFinite,
        disabledElevation:00,
        backgroundColor: Colors.tealAccent,
        focusNode: _focusNode,
        autofocus: true,
        foregroundColor: Colors.pink,
        isExtended: false,
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: FloatingButton(),
  ));
}
