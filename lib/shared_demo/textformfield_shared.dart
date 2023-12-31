import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TextFormFieldShard {
  static String nameSp = '';
  static String surNameSp = '';
  static String ageSp = '';
  static int selectedIndex = 0;

  static SharedPreferences? pref;

  static final TextEditingController txtNameEditingController =
      TextEditingController();
  static final TextEditingController txtSurNameEditingController =
      TextEditingController();
  static final TextEditingController txtAgeEditingController =
      TextEditingController();

  static void setValue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(SharedKey.name, txtNameEditingController.text);
    pref.setString(SharedKey.surName, txtSurNameEditingController.text);
    pref.setString(SharedKey.age, txtAgeEditingController.text);
  }

  static void getValue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    nameSp = pref.getString(SharedKey.name) ?? '';
    surNameSp = pref.getString(SharedKey.surName) ?? '';
    ageSp = pref.getString(SharedKey.age) ?? '';
  }

  String userData = [
    {
      'Name': txtNameEditingController.text,
      'SurName': txtSurNameEditingController.text,
      'Age': txtAgeEditingController.text,
    }
  ].toString();

  // static void addUser() {
  //   userData.add({
  //     'Name': txtNameEditingController.text,
  //     'SurName': txtSurNameEditingController.text,
  //     'Age': txtAgeEditingController.text,
  //   });
  // }

  // String data = [
  //   {
  //     'name'
  //   }
  // ];

  static void clearUserdata() {
    txtNameEditingController.clear();
    txtSurNameEditingController.clear();
    txtAgeEditingController.clear();
  }

//   static void toTapAdd() {
//     txtNameEditingController.text = userData[selectedIndex][SharedKey.name];
//     txtSurNameEditingController.text =
//         userData[selectedIndex][SharedKey.surName];
//     txtAgeEditingController.text = userData[selectedIndex][SharedKey.age];
//   }
}

class SharedKey {
  static String name = 'name';
  static String surName = 'surName';
  static String age = 'age';
}
