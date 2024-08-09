import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedDrawerIndex = 1; // Directly set to Settings page
                  });
                },
                child: Text('Next', style: TextStyle(fontSize: 15)),
              ),
            ],
          ),
        );
      case 1:
        return Center(child: Text('Settings Page'));
      case 2:
        return Center(child: Text('Contact Page'));
      case 3:
        return Center(child: Text('Logout Page'));

      default:
        return Center(child: Text('Home Page'));
    }
  }

  _onSelectItem(int index) {
    setState(() {
      _selectedDrawerIndex = index;
    });
    Navigator.of(context).pop(); // Close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Drawer Demo'),
        backgroundColor: Colors.green,
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  "Abhishek Mishra",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("abhishekm977@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              selected: _selectedDrawerIndex == 0,
              onTap: () => _onSelectItem(0),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              selected: _selectedDrawerIndex == 1,
              onTap: () => _onSelectItem(1),
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact'),
              selected: _selectedDrawerIndex == 2,
              onTap: () => _onSelectItem(2),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              selected: _selectedDrawerIndex == 3,
              onTap: () => _onSelectItem(3),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DrawerPage(),
  ));
}
