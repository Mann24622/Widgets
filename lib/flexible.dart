import 'package:flutter/material.dart';

class FlexiblePage extends StatelessWidget {
  const FlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flexible'),
        ),
        body: Card(
          child: Flexible(
            fit: FlexFit.loose,
            child: Row(
              children: [
                Flexible(
                  flex: 8,
                  child: const Text(
                    'hello good morning',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: const Text('hhdhdh'),
                ),
                Flexible(
                  flex: 2,
                  child: const Text('hhdhdh'),
                ),
              ],
            ),
          ),
        ));
  }
}
