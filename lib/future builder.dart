import 'package:flutter/material.dart';

void main() => runApp(FutureBuilderExample());

class FutureBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FutureBuilder Example'),
        ),
        body: Center(
          child: FutureBuilder<String>(
            future: fetchData(), // Function to fetch data asynchronously
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              // Check the state of the future
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator(); // Display a loading indicator while waiting
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}'); // Display error message if an error occurs
              } else {
                return Text('Data: ${snapshot.data}'); // Display the fetched data
              }
            },
          ),
        ),
      ),
    );
  }

  // Simulate a network request or any asynchronous operation
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 2)); // Simulate a delay
    return 'Hello, FutureBuilder!'; // Return fetched data
  }
}
