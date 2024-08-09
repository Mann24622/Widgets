import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Row'),
        ),
        body: Container(
            color: Colors.amber,
            child: const Row(

              verticalDirection: VerticalDirection.up,
              textDirection: TextDirection.ltr,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Hello Rajkot, How are you?',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ])));
  }
}
