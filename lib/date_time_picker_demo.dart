// import 'package:date_time_picker/date_time_picker.dart';
// import 'package:flutter/material.dart';

// class DateTimePickerUiDemo extends StatefulWidget {
//   const DateTimePickerUiDemo({super.key});

//   @override
//   State<DateTimePickerUiDemo> createState() => _DateTimePickerUiDemoState();
// }

// class _DateTimePickerUiDemoState extends State<DateTimePickerUiDemo> {
//   final GlobalKey<FormState> _oFormKey = GlobalKey<FormState>();
//   late TextEditingController _controller1;
//   late TextEditingController _controller2;
//   late TextEditingController _controller3;
//   late TextEditingController _controller4;
//   String _valueChanged1 = '';
//   String _valueToValidate1 = '';
//   String _valueSaved1 = '';
//   String _valueChanged2 = '';
//   String _valueToValidate2 = '';
//   String _valueSaved2 = '';
//   String _valueChanged3 = '';
//   String _valueToValidate3 = '';
//   String _valueSaved3 = '';
//   String _valueChanged4 = '';
//   String _valueToValidate4 = '';
//   String _valueSaved4 = '';

//   @override
//   void initState() {
//     super.initState();
//     // Intl.defaultLocale = 'pt_BR';
//     //_initialValue = DateTime.now().toString();
//     _controller1 = TextEditingController(
//       text: DateTime.now().toString(),
//     );
//     _controller2 = TextEditingController(
//       text: DateTime.now().toString(),
//     );
//     _controller3 = TextEditingController(
//       text: DateTime.now().toString(),
//     );

//     String lsHour = TimeOfDay.now().hour.toString().padLeft(2, '0');
//     String lsMinute = TimeOfDay.now().minute.toString().padLeft(2, '0');
//     _controller4 = TextEditingController(text: '$lsHour:$lsMinute');

//     _getValue();
//   }

//   Future<void> _getValue() async {
//     await Future.delayed(const Duration(seconds: 3), () {
//       //_initialValue = '2000-10-22 14:30';
//       _controller1.text = '2000-09-20 14:30';
//       _controller2.text = '2001-10-21 15:31';
//       _controller3.text = '2002-11-22';
//       _controller4.text = '17:01';
//       setState(() {});
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Form(
//             key: _oFormKey,
//             child: Column(
//               children: [
//                 DateTimePicker(
//                   type: DateTimePickerType.dateTimeSeparate,
//                   dateMask: 'd MMM, yyyy',
//                   controller: _controller1,
//                   //initialValue: DateTime.now().toString(),
//                   firstDate: DateTime(2000),
//                   lastDate: DateTime(2100),
//                   icon: const Icon(Icons.event),
//                   dateLabelText: 'Date',
//                   timeLabelText: 'Time',
//                   selectableDayPredicate: (date) {
//                     if (date.weekday == 6 || date.weekday == 7) {
//                       return false;
//                     }

//                     return true;
//                   },
//                   onChanged: (val) {
//                     //print(val);
//                     _valueChanged1 = val;
//                     setState(() {});
//                   },
//                   validator: (val) {
//                     //print(val);
//                     _valueToValidate1 = val ?? '';
//                     setState(() {});
//                     return null;
//                   },
//                   onSaved: (val) {
//                     //print(val);
//                     _valueSaved1 = val ?? '';
//                     setState(() {});
//                   },
//                 ),
//                 DateTimePicker(
//                   type: DateTimePickerType.dateTime,
//                   dateMask: 'd MMMM, yyyy - hh:mm a',
//                   controller: _controller2,
//                   //initialValue: DateTime.now().toString(),
//                   firstDate: DateTime(2000),
//                   lastDate: DateTime(2100),
//                   //icon: Icon(Icons.event),
//                   dateLabelText: 'Date Time',
//                   use24HourFormat: false,
//                   //locale: const Locale('en', 'US'),
//                   onChanged: (val) {
//                     _valueChanged2 = val;
//                     setState(() {});
//                   },
//                   validator: (val) {
//                     _valueToValidate2 = val ?? '';

//                     setState(() {});
//                     return null;
//                   },
//                   onSaved: (val) {
//                     _valueSaved2 = val ?? '';
//                     setState(() {});
//                   },
//                 ),
//                 DateTimePicker(
//                   type: DateTimePickerType.date,
//                   //dateMask: 'yyyy/MM/dd',
//                   controller: _controller3,
//                   // initialValue: DateTime.now().toString(),
//                   firstDate: DateTime(2000),
//                   lastDate: DateTime(2100),
//                   icon: const Icon(Icons.event),
//                   dateLabelText: 'Date',
//                   //locale: const Locale('pt', 'BR'),
//                   onChanged: (val) {
//                     _valueChanged3 = val;
//                     setState(() {});
//                   },
//                   validator: (val) {
//                     _valueToValidate3 = val ?? '';
//                     setState(() {});
//                     return null;
//                   },
//                   onSaved: (val) {
//                     _valueSaved3 = val ?? '';
//                     setState(() {});
//                   },
//                 ),
//                 DateTimePicker(
//                   type: DateTimePickerType.time,
//                   //timePickerEntryModeInput: true,
//                   //controller: _controller4,
//                   initialValue: '', //_initialValue,
//                   icon: const Icon(Icons.access_time),
//                   timeLabelText: "Time",
//                   use24HourFormat: false,
//                   //locale: const Locale('pt', 'BR'),
//                   onChanged: (val) {
//                     _valueChanged4 = val;
//                     setState(() {});
//                   },
//                   validator: (val) {
//                     _valueToValidate4 = val ?? '';
//                     setState(() {});
//                     return null;
//                   },
//                   onSaved: (val) {
//                     _valueSaved4 = val ?? '';
//                     setState(() {});
//                   },
//                 ),
//                 const SizedBox(height: 20),
//                 const Text(
//                   'DateTimePicker data value onChanged:',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 10),
//                 SelectableText(_valueChanged1),
//                 SelectableText(_valueChanged2),
//                 SelectableText(_valueChanged3),
//                 SelectableText(_valueChanged4),
//                 const SizedBox(height: 10),
//                 ElevatedButton(
//                   onPressed: () {
//                     final loForm = _oFormKey.currentState;

//                     if (loForm?.validate() == true) {
//                       loForm?.save();
//                     }
//                   },
//                   child: const Text('Submit'),
//                 ),
//                 const SizedBox(height: 30),
//                 const Text(
//                   'DateTimePicker data value validator:',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 10),
//                 SelectableText(_valueToValidate1),
//                 SelectableText(_valueToValidate2),
//                 SelectableText(_valueToValidate3),
//                 SelectableText(_valueToValidate4),
//                 const SizedBox(height: 10),
//                 const Text(
//                   'DateTimePicker data value onSaved:',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 10),
//                 SelectableText(_valueSaved1),
//                 SelectableText(_valueSaved2),
//                 SelectableText(_valueSaved3),
//                 SelectableText(_valueSaved4),
//                 const SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     final loForm = _oFormKey.currentState;
//                     loForm?.reset();
//                     _valueChanged1 = '';
//                     _valueChanged2 = '';
//                     _valueChanged3 = '';
//                     _valueChanged4 = '';
//                     _valueToValidate1 = '';
//                     _valueToValidate2 = '';
//                     _valueToValidate3 = '';
//                     _valueToValidate4 = '';
//                     _valueSaved1 = '';
//                     _valueSaved2 = '';
//                     _valueSaved3 = '';
//                     _valueSaved4 = '';
//                     setState(() {});

//                     _controller1.clear();
//                     _controller2.clear();
//                     _controller3.clear();
//                     _controller4.clear();
//                   },
//                   child: const Text('Reset'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
