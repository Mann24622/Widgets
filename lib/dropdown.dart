import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String _selectedValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown Button'),
      ),
      body: Center(
        child: DropdownButton(
          autofocus: true,
          dropdownColor: Colors.lightGreenAccent,
          itemHeight: 50,
          iconSize: 30,
          elevation: 8,

          borderRadius: BorderRadius.circular(10),
          value: _selectedValue,
          items: <String>['One', 'Two', 'Three', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Dropdown(),
  ));
}
