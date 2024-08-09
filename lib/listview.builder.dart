import 'package:flutter/material.dart';

class ListViewBuilderExample extends StatelessWidget {
  // Example list of items
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
  ];

  // Scroll controller for ListView
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.builder Example'),
      ),
      body: ListView.builder(


        controller: _scrollController, // Assigning the ScrollController
        clipBehavior: Clip.antiAlias,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.map),
            title: Text(items[index]), // Display item name
            subtitle: Text('Open ${items[index]}'), // Example subtitle
            onTap: () {
              // Action when ListTile is tapped
              print('${items[index]} tapped');
            },
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ListViewBuilderExample(),
  ));
}
