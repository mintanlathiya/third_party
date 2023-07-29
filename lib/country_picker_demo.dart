import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class CountryPickerDemoUi extends StatefulWidget {
  const CountryPickerDemoUi({super.key});

  @override
  State<CountryPickerDemoUi> createState() => _CountryPickerDemoUiState();
}

class _CountryPickerDemoUiState extends State<CountryPickerDemoUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(16)),
              child: const CountryCodePicker(
                initialSelection: 'IN',
                //showFlag: true,
                //enabled: true,
                hideMainText: true,
                //showFlagDialog: true,
                hideSearch: false,
                favorite: ['+91', 'IN'],
                showCountryOnly: false,
                showOnlyCountryWhenClosed: false,
                alignLeft: true,
                padding: EdgeInsets.all(16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
