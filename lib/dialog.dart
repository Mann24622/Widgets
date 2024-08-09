import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({Key? key}) : super(key: key);

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
                return AlertDialog(
                  actionsAlignment: MainAxisAlignment.end, // Align actions to the right
                  shadowColor: Colors.deepPurpleAccent,
                  iconColor: Colors.black,
                  elevation: double.infinity,
                  backgroundColor: Colors.cyanAccent,
                  title: Text('Dialog Title'), // Optional title of the dialog
                  content: Text('This is the content of the dialog.'), // Content of the dialog
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Dismiss the dialog
                      },
                      child: Text('CLOSE'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Show Dialog'),
        ),
      ),
    );
  }
}
