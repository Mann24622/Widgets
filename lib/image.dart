import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Image.asset(
                'assets/image/pic.jpg',
                height: 250,
                width: 250,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Image.network(
                'https://picsum.photos/250?image=9',
                height: 150,
                width: 300,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
