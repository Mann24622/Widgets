import 'package:flutter/material.dart';

class CircularProcess extends StatelessWidget {
  const CircularProcess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circular Progress Indicator'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(

          color: Colors.pink,
          semanticsValue: 'Loading',
          semanticsLabel: AutofillHints.addressCity,


        ),
      ),
    );
  }
}
