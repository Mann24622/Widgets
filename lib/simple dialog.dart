import 'package:flutter/material.dart';

class SimpleDialogPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return SimpleDialog(

                shadowColor: Colors.green,
                  title: const Text('Simple Dialog Title'), // Title of the dialog
                  children: <Widget>[
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.of(context).pop(); // Dismiss the dialog
                      },
                      child: const Text('Option 1'),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.of(context).pop(); // Dismiss the dialog
                      },
                      child: const Text('Option 2'),
                    ),
                  ],
                );
              },
            );
          },
          child: const Text('Show Simple Dialog'), // Provide text for the button
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SimpleDialogPage(),
  ));
}
