import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class InitPhoneFieldDemoUi extends StatefulWidget {
  const InitPhoneFieldDemoUi({super.key});

  @override
  State<InitPhoneFieldDemoUi> createState() => _InitPhoneFieldDemoUiState();
}

class _InitPhoneFieldDemoUiState extends State<InitPhoneFieldDemoUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IntlPhoneField(
            decoration: const InputDecoration(
              labelText: 'Phone Number',
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
            initialCountryCode: 'IN',
            onChanged: (phone) {
              print(phone.completeNumber);
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
