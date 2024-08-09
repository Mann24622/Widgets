import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: double.infinity,
       actions: [
      IconButton(
      icon: Icon(Icons.search),
      onPressed: () {
        // Implement action here
      },
    ),],
       backgroundColor: Colors.amberAccent,
        title: const Text('Container'),
        bottomOpacity: 0.5,
        shadowColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Container(
          transformAlignment: Alignment.topCenter,

          alignment: Alignment.center,
          constraints: BoxConstraints.tight(Size(100, 100)), // Apply constraints here
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          foregroundDecoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.purpleAccent.withOpacity(0.5),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Text(
            'Content',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
