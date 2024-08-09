import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DraggableScrollPage(),
    );
  }
}

class DraggableScrollPage extends StatelessWidget {
  const DraggableScrollPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Draggable Example'),
      ),
      body: Stack(
        children: [
          ListView(
            children: List.generate(20, (index) => ListTile(title: Text('Item $index'))),
          ),
          DraggableScrollableSheet(
            controller: DraggableScrollableController(),
            initialChildSize: 0.1,
            minChildSize: 0.1,
            maxChildSize: 0.8,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                color: Colors.blue[100],
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 30,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(title: Text('Draggable Item $index'));
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
