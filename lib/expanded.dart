import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expanded'),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                color: Colors.yellow,
                height: 60,
                width: 200,
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 90,
                    color: Colors.green,
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 90,
                    color: Colors.blue,
                  )),
            ],
          ),
        ));
  }
}
