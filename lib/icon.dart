import 'package:flutter/material.dart';

class IconPage extends StatelessWidget {
  const IconPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Icon'),
        ),
        body: Container(
          child: Row(
            children: [
              Column(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.music_note,),)
                ],
              )
            ],
          ),
        ));
  }
}