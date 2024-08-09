import 'package:flutter/material.dart';

class ScrollbarPage extends StatelessWidget {
  const ScrollbarPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scrollbar Example'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Scrollbar(

          thickness: 6, // Set thickness of the scrollbar
          child: ListView.builder(

            itemCount: 50,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ScrollbarPage(),
  ));
}
