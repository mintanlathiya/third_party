import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

class DateTimePickerUiDemo extends StatefulWidget {
  const DateTimePickerUiDemo({super.key});

  @override
  State<DateTimePickerUiDemo> createState() => _DateTimePickerUiDemoState();
}

class _DateTimePickerUiDemoState extends State<DateTimePickerUiDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DateTimePicker(
            type: DateTimePickerType.dateTimeSeparate,
            initialValue: DateTime.now().toString(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2100),
            icon: const Icon(Icons.event),
            dateLabelText: 'Date',
            timeLabelText: 'Time',
            onChanged: (val) => print(val),
            selectableDayPredicate: (date) {
              if (date.weekday == 6 || date.weekday == 7) {
                return false;
              }

              return true;
            },
            validator: (val) {
              print(val);
              return null;
            },
            onSaved: (val) => print(val),
          )
        ],
      ),
    );
  }
}
