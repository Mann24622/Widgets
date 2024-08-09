import 'package:flutter/material.dart';

class TimePickerPage extends StatefulWidget {
  const TimePickerPage({Key? key}) : super(key: key);

  @override
  _TimePickerPageState createState() => _TimePickerPageState();
}

class _TimePickerPageState extends State<TimePickerPage> {
  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _selectTime(context);
              },
              child: Text('Open Time Picker'),
            ),
            SizedBox(height: 20),
            _selectedTime != null
                ? Text(
              'Selected time: ${_selectedTime!.format(context)}',
              style: TextStyle(fontSize: 18),
            )
                : Container(),
          ],
        ),
      ),
    );
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData(
            primaryColor: Colors.green, // Example custom theme data
            hintColor: Colors.blue, // Example custom theme data
            dialogBackgroundColor: Colors.white, // Example custom theme data
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }
}
