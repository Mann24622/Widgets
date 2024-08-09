import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Text'),
        ),
        body: const Column(
          children: [
            Row(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  selectionColor: Colors.blue,
                  textDirection: TextDirection.rtl,
                  'hello kem cho rajkot',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
