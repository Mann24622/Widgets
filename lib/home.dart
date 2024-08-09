import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:widgets_application/Post.dart';
import 'package:widgets_application/model/model.dart';

class GetApi extends StatelessWidget {
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
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Cloth>> futureClothData;

  @override
  void initState() {
    super.initState();
    futureClothData = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cloth Data'),
      ),
      body: FutureBuilder<List<Cloth>>(
        future: futureClothData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No Data Found'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final clothItem = snapshot.data![index];
                return ListTile(
                  title: Text('ID: ${clothItem.id}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Title: ${clothItem.title}'),
                      Text('Price: ${clothItem.price}'),
                      Text('Description: ${clothItem.description}'),
                      Text('Category: ${clothItem.category}'),
                      Text('Image: ${clothItem.image}'),
                      Text('Rating: ${clothItem.rating}'),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
Future<List<Cloth>> getData() async {
  final response = await http.get(Uri.parse("https://fakestoreapi.com/products"));
  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body);
    return data.map((item) => Cloth.fromJson(item)).toList();
  } else {
    throw Exception('Failed to load data');
  }
}


