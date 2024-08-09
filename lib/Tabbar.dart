import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // The number of tabs to display.
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabbar'),
          bottom:  const TabBar(
            mouseCursor: SystemMouseCursors.resizeDownRight,
            splashBorderRadius: BorderRadius.vertical(),
            labelColor: Colors.blue,
            dividerColor: Colors.pinkAccent,
            indicator: BoxDecoration(color: Colors.lightBlueAccent),
            tabs: [
              Tab(icon: Icon(Icons.home), child: Text('data')),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
            ],
          ),
        ),
        body: const TabBarView(
          
          children: [
            Center(
              child: Text(
                'hello good Afternoon',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'Settings Page',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Tabbar(),
  ));
}
