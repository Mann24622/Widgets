import 'package:flutter/material.dart';

class ElevatedButtonPage extends StatefulWidget {
  const ElevatedButtonPage({super.key});

  @override
  _ElevatedButtonPageState createState() => _ElevatedButtonPageState();
}

class _ElevatedButtonPageState extends State<ElevatedButtonPage> {
  late FocusNode _buttonFocusNode;
  bool isHovering = false;

  @override
  void initState() {
    super.initState();
    _buttonFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _buttonFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elevated Button Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onHover: (hovering) {
            setState(() {
              isHovering = hovering;
            });
          },
          focusNode: _buttonFocusNode, // Assign the FocusNode
          autofocus: true, // Optionally set autofocus
          clipBehavior: Clip.antiAlias, // Set clipBehavior if needed
          onLongPress: () {
            // Implement long press action here
          },
          onPressed: () {
            // Implement on pressed action here
          },
          style: ElevatedButton.styleFrom(
            primary: isHovering ? Colors.grey[300] : Colors.grey[200],
          ),
          child: Text(
            'om infowave',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: isHovering ? Colors.blue : Colors.black,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _buttonFocusNode.requestFocus();
        },
        child: const Icon(Icons.touch_app),
      ),
    );
  }
}
void main() {
  runApp(const MaterialApp(
    home: ElevatedButtonPage(),
  ));
}
