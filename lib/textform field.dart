import 'package:flutter/material.dart';

class TextfieldForm extends StatelessWidget {
  const TextfieldForm({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a GlobalKey for the form
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('TextForm Field'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Assign the key to the form
          child: Column(
            children: [
              TextFormField(
                textInputAction: TextInputAction.next, // Move to the next field
                decoration: InputDecoration(
                  labelText: 'Enter first name', // Example label text
                  border: OutlineInputBorder(),
                ),
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                maxLength: 30,
                cursorRadius: Radius.circular(20),
                autocorrect: true,
                autofocus: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your first name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                textInputAction: TextInputAction.next, // Move to the next field
                decoration: InputDecoration(
                  labelText: 'Enter last name', // Example label text
                  border: OutlineInputBorder(),
                ),
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                maxLength: 30,
                cursorRadius: Radius.circular(20),
                autocorrect: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your last name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                textInputAction: TextInputAction.done, // Example action button
                decoration: InputDecoration(
                  labelText: 'Enter email', // Example label text
                  border: OutlineInputBorder(),
                ),
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                maxLength: 30,
                cursorRadius: Radius.circular(20),
                autocorrect: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Validate the form
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar or perform another action
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: TextfieldForm(),
  ));
}
