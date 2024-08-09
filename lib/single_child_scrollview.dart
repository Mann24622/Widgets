import 'package:flutter/material.dart';

void main() => runApp(Singlechild());

class Singlechild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single child scrollview'),
      ),
      body: Container(
        child: SingleChildScrollView(
          clipBehavior: Clip.antiAlias,

          scrollDirection: Axis.vertical, // Specify the direction here
          child: Column(
            children: <Widget>[
              // Add your widgets inside the SingleChildScrollView
              // Example widgets:
              Container(
                height: 200,
                color: Colors.red,
                margin: EdgeInsets.all(10),
              ),
              Container(
                height: 200,
                color: Colors.blue,
                margin: EdgeInsets.all(10),
              ),
              Container(
                height: 200,
                color: Colors.green,
                margin: EdgeInsets.all(10),
              ),
              Container(
                height: 200,
                color: Colors.yellow,
                margin: EdgeInsets.all(10),
              ),
              Container(
                height: 200,
                color: Colors.orange,
                margin: EdgeInsets.all(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
