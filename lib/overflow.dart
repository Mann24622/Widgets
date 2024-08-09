import 'package:flutter/material.dart';

class Overflow extends StatelessWidget {
  const Overflow({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Row'),
        ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                width: 120,
                height: 100,
                color: Colors.red,
                child: const Text(
                  'This is a very long text that might overflow',
                  overflow: TextOverflow.ellipsis,
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  selectionColor: Colors.purple,

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
