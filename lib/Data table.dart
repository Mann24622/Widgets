import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DataTablePage(),
    );
  }
}

class DataTablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Table Example'),
      ),
      body: SingleChildScrollView(
        child: DataTable(
          columns: [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Age')),
            DataColumn(label: Text('Role')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('John')),
              DataCell(Text('30')),
              DataCell(Text('Developer')),
            ]),
            DataRow(cells: [
              DataCell(Text('Jane')),
              DataCell(Text('28')),
              DataCell(Text('Designer')),
            ]),
            DataRow(cells: [
              DataCell(Text('Doe')),
              DataCell(Text('25')),
              DataCell(Text('Intern')),
            ]),
          ],
        ),
      ),
    );
  }
}
