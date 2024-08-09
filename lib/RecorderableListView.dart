import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: RecorderablePage(),
    );
  }
}

class RecorderablePage extends StatefulWidget {
  @override
  _RecorderablePageState createState() => _RecorderablePageState();
}

class _RecorderablePageState extends State<RecorderablePage> {
  List<String> _itSkills = [
    'Flutter',
    'Dart',
    'Firebase',
    'React',
    'Node.js',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RecorderablePage'),
      ),
      body: ReorderableListView(
        children: <Widget>[
          for (final item in _itSkills)
            Card(
              key: Key(item),
              color: Colors.deepOrangeAccent,
              elevation: 2,
              child: ListTile(
                key: ValueKey(item),
                title: Text(item),
              ),
            ),
        ],
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final String item = _itSkills.removeAt(oldIndex);
            _itSkills.insert(newIndex, item);
          });
        },
      ),
    );
  }
}
