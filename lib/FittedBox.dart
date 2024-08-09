import 'package:flutter/material.dart';

void main() => runApp( FittedBoxPage());

class FittedBoxPage extends StatelessWidget {
  const FittedBoxPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FittedBox'),
      ),


        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(height: 100),

              // Without FittedBox

              FittedBox(
                clipBehavior: Clip.antiAlias,
                alignment: Alignment.topRight,
                fit: BoxFit.contain, // Specify how the child should be fitted within the constraints
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      'FittedBox Example',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ));
  }
}