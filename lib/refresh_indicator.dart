import 'package:flutter/material.dart';

void main() {
  runApp(RefreshPage());
}

class RefreshPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green, // Set the app's primary theme color
      ),
      debugShowCheckedModeBanner: false,
      title: 'RefreshIndicator Example',
      home: RefreshIndicatorPage(),
    );
  }
}

class RefreshIndicatorPage extends StatelessWidget {
  final List<String> items = List<String>.generate(20, (i) => 'Item $i');

  Future<void> _refreshData() async {
    // Simulate a network call and wait for 2 seconds
    await Future.delayed(Duration(seconds: 2));
    // Normally, here you would refresh the data by making a network request or similar.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RefreshIndicator Example'),
      ),
      body: RefreshIndicator(
        semanticsValue: AutofillHints.addressCityAndState,
        semanticsLabel: AutofillHints.addressCity,
        strokeWidth: double.infinity,
        backgroundColor: Colors.purpleAccent,
        onRefresh: _refreshData, // Callback function for refresh action
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}
