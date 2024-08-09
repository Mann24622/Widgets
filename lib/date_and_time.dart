import 'package:flutter/material.dart';

class DatePicker extends StatelessWidget {


  // Define a hint text that describes the action of selecting a date
  final String fieldHintText = 'Select a date';

  // Define a variable to store the selected date
  DateTime? selectedDate;

  DatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Date'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              fieldHintText,
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _selectDate(context);
              },
              child: Text('Open Date Picker'),
            ),
            SizedBox(height: 20), // Add some space
            // Show selected date if available
            if (selectedDate != null)
              Text(
                'Selected date: ${selectedDate!.toString().split(' ')[0]}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2010),
      lastDate: DateTime(2100),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark(), // Customize your theme here
          child: child!,
        );
      },
    );
    if (picked != null) {
      // Update the selectedDate variable and trigger UI update
      selectedDate = picked;
    } else {
      // Handle case where user cancels date selection
      selectedDate = null;
    }
    // Trigger rebuild of the widget
    (context as Element).markNeedsBuild();
  }
}
