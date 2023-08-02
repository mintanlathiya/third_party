import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class CountryPickerDemoUi extends StatefulWidget {
  const CountryPickerDemoUi({super.key});

  @override
  State<CountryPickerDemoUi> createState() => _CountryPickerDemoUiState();
}

class _CountryPickerDemoUiState extends State<CountryPickerDemoUi> {
  String selectedCountry = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //       border: Border.all(), borderRadius: BorderRadius.circular(16)),
          //   child: const CountryCodePicker(
          //     initialSelection: 'IN',
          //     //showFlag: true,
          //     //enabled: true,
          //     hideMainText: true,
          //     //showFlagDialog: true,
          //     hideSearch: false,
          //     favorite: ['+91', 'IN'],
          //     showCountryOnly: false,
          //     showOnlyCountryWhenClosed: false,
          //     alignLeft: true,
          //     padding: EdgeInsets.all(16),
          //   ),
          // ),
          ElevatedButton(
            onPressed: () {
              showCountryPicker(
                context: context,
                //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                exclude: <String>['KN', 'MF'],
                favorite: <String>['SE'],
                //Optional. Shows phone code before the country name.
                showPhoneCode: true,
                onSelect: (Country country) {
                  selectedCountry = country.displayName;
                  print('Select country: ${country.displayName}');
                  setState(() {});
                },
                // Optional. Sets the theme for the country list picker.
                countryListTheme: CountryListThemeData(
                  // Optional. Sets the border radius for the bottomsheet.
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                  // Optional. Styles the search field.
                  inputDecoration: InputDecoration(
                    labelText: 'Search',
                    hintText: 'Start typing to search',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xFF8C98A8).withOpacity(0.2),
                      ),
                    ),
                  ),
                  // Optional. Styles the text in the search field
                  searchTextStyle: const TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
              );
            },
            child: const Text('Show country picker'),
          ),
          Text(selectedCountry),
        ],
      ),
    ));
  }
}
