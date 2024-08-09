import 'package:flutter/material.dart';

void main() => runApp(SliderApp());

class SliderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliderPage(),
    );
  }
}

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Example'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Text(
                'Slider Value: $_currentSliderValue',
                style: TextStyle(fontSize: 24),
              ),
              Slider(
                thumbColor: Colors.amber,
                secondaryActiveColor: Colors.cyanAccent,
                activeColor: Colors.green,
                autofocus: true,
                value: _currentSliderValue,
                min: 0,
                max: 100,
                divisions: 100,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
