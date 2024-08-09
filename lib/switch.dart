import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SwitchPage(),
    );
  }
}

class SwitchPage extends StatefulWidget {
  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool isSwitched = false;
  String textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
      textValue = isSwitched ? 'Switch is ON' : 'Switch is OFF';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Switch(
            onChanged: toggleSwitch,
            value: isSwitched,
            activeColor: Colors.blue,
            activeTrackColor: Colors.yellow,
            inactiveThumbColor: Colors.redAccent,
            inactiveTrackColor: Colors.orange,
          ),
          Text('$textValue', style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
