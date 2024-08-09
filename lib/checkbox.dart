import 'package:flutter/material.dart';

class Checkboxpage extends StatelessWidget {
  const Checkboxpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Example'),
      ),
      body: Center(
        child: Checkbox(

          focusColor: Colors.yellowAccent,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // Adjusted to a valid value
          autofocus: true,
          hoverColor: Colors.pink,
          value: true, // Example value, set to true or false based on your logic
          onChanged: (bool? newValue) {
            // Handle checkbox value change
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Checkboxpage(),
  ));
}
