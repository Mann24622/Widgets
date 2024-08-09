import 'package:flutter/material.dart';

class ListViewSeparated extends StatelessWidget {


  // Scroll controller for ListView
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextForm Field'),
      ),
      body: Container(
        child: ListView.separated(
          controller: _scrollController, // Assigning the ScrollController
          scrollDirection: Axis.vertical,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          itemBuilder: (context, position) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'List Item $position',
                ),
              ),
            );
          },
          separatorBuilder: (context, position) {
            return Card(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Separator $position',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          },
          itemCount: 5,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ListViewSeparated(),
  ));
}
