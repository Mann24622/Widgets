import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  get mapFocusNode => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: ListView(
        
        scrollDirection: Axis.vertical, // Default is vertical
        itemExtent: 80, // Fixed height for each item
        clipBehavior: Clip.antiAlias, // Clip content with anti-aliasing
        children: [
          ListTile(
            autofocus: true,
            focusNode: mapFocusNode,
            hoverColor: Colors.green,
            selectedTileColor: Colors.pinkAccent,
            leading: Icon(Icons.map),
            title: Text('Map'),
            subtitle: Text('Open Map'),
            onTap: () {
              // Action for map tile
              print('Map tile tapped');
            },
          ),
          ListTile(
            autofocus: true,
            focusNode: mapFocusNode,
            hoverColor: Colors.green,
            selectedTileColor: Colors.pinkAccent,
            leading: Icon(Icons.map),
            title: Text('Map'),
            subtitle: Text('Open Map'),
            onTap: () {
              // Action for map tile
              print('Map tile tapped');
            },
          ),


        ],
      ),
     
    );
  }

}



void main() {
  runApp(MaterialApp(
    home: MyListView(),
  ));
}
