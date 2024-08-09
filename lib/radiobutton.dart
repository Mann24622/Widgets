import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int _selectedValue = 1; // Example initial value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Button Example'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RadioListTile<int>(
              toggleable: true,
              activeColor: Colors.cyan,
              secondary: const Icon(Icons.star),
              selectedTileColor: Colors.lightBlueAccent,
              autofocus: false,
              hoverColor: Colors.amberAccent,
              title: const Text('Option 1'),
              value: 1,
              groupValue: _selectedValue,
              onChanged: (int? value) {
                setState(() {
                  _selectedValue = value ?? 1;
                });
              },
            ),
            RadioListTile<int>(
              toggleable: false,
              activeColor: Colors.cyan,
              secondary: const Icon(Icons.star),
              selectedTileColor: Colors.lightBlueAccent,
              autofocus: false,
              hoverColor: Colors.amberAccent,
              title: const Text('Option 2'),
              value: 0,

              groupValue: _selectedValue,
              onChanged: (int? value) {
                setState(() {
                  _selectedValue = value ?? 1;
                });
              },
            ),


          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: RadioButton(),
  ));
}
