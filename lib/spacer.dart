import 'package:flutter/material.dart';

class SpacerPage extends StatelessWidget {
  const SpacerPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Spacer'),
        ),
        body: Container(

          child: Row(
            children:[
              Container(color: Colors.red, child: Text("India")),
              Spacer(

                flex: 1,
              ),
              Container(color: Colors.purpleAccent, child: Text("Pakistan")),
            ],
          ),
        ));
  }
}
