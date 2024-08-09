import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageviewPage(),
    );
  }
}

class PageviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PageView'),
        ),
        /*  body: PageView(
          scrollBehavior: ScrollBehavior(),
          clipBehavior: Clip.antiAlias,
          controller: PageController(),
          allowImplicitScrolling: FutureBuilder.debugRethrowError,
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.green,
            ),
          ],
        ),*/

     /*   body: PageView.builder(
          scrollDirection: Axis.vertical,
          clipBehavior: Clip.antiAlias,
          controller: PageController(),
          itemBuilder: (context, index) {
            return Center(
              child: Text('$index'),
            );
          },
          itemCount: 5,
        )*/

      body: PageView.custom(

        scrollDirection: Axis.horizontal,
        controller: PageController(),
        childrenDelegate: SliverChildListDelegate(
          [
            const Text('1'),
            const Text('2'),
            const Text('3'),
          ],
        ),
      )


    );
  }
}
