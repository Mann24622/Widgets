import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final apiUrl = "https://jsonplaceholder.typicode.com/posts";
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  Future<void> sendPostRequest() async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        "title": titleController.text,
        "body": bodyController.text,
        "userid": 1
      }),
    );
    if (response.statusCode == 201) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Post created successfully")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Failed to create post")),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello, welcome to this page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(hintText: "Enter your Title"),
            ),
            TextField(
              controller: bodyController,
              decoration: const InputDecoration(hintText: "Enter your Body"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: sendPostRequest,
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
