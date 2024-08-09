import 'package:flutter/material.dart';

class MediaQueryDatapage extends StatelessWidget {
  const MediaQueryDatapage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Retrieve MediaQuery data
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Device Width: ${mediaQuery.size.width.toStringAsFixed(2)}'),
            Text('Device Height: ${mediaQuery.size.height.toStringAsFixed(2)}'),
            SizedBox(height: 20),
            Text('Device Pixel Ratio: ${mediaQuery.devicePixelRatio.toStringAsFixed(2)}'),
            SizedBox(height: 20),
            Text('Orientation: ${mediaQuery.orientation}'),
            SizedBox(height: 20),
            Text('System Brightness: ${mediaQuery.platformBrightness}'),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MediaQueryDatapage(),
  ));
}
