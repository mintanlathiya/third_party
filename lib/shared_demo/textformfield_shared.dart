import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TextFormFieldShard {
  static List userData = [];
  static int selectedIndex = 0;

  static SharedPreferences? pref;

  static final TextEditingController txtNameEditingController =
      TextEditingController();
  static final TextEditingController txtSurNameEditingController =
      TextEditingController();
  static final TextEditingController txtAgeEditingController =
      TextEditingController();
  static final TextEditingController txtUrlEditingController =
      TextEditingController();

  // static Future<SharedPreferences> get init async =>
  //     pref = await SharedPreferences.getInstance();

  // static set setNameTextField(TextEditingController nameData) =>
  //     pref!.setString(SharedKey.name, txtNameEditingController.text.toString());
  // static set setSurNameTextField(TextEditingController surNameData) =>
  //     pref!.setString(
  //         SharedKey.surName, txtSurNameEditingController.text.toString());
  // static set setAgeTextField(TextEditingController ageData) =>
  //     pref!.setString(SharedKey.age, txtAgeEditingController.text.toString());
  // static set setUrlTextField(TextEditingController urlData) =>
  //     pref!.setString(SharedKey.url, txtUrlEditingController.text.toString());
  // static String get getNameTextField => pref!.getString(SharedKey.name) ?? '';
  // static String get getSurNameTextField =>
  //     pref!.getString(SharedKey.surName) ?? '';
  // static String get getAgeTextField => pref!.getString(SharedKey.age) ?? '';
  // static String get getUrlTextField => pref!.getString(SharedKey.url) ?? '';

  static void setValue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(SharedKey.name, txtNameEditingController.text);
    pref.setString(SharedKey.surName, txtSurNameEditingController.text);
    pref.setString(SharedKey.age, txtAgeEditingController.text);
  }

  static void getValue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    txtNameEditingController.text = pref.getString(SharedKey.name) ?? '';
    txtSurNameEditingController.text = pref.getString(SharedKey.surName) ?? '';
    txtAgeEditingController.text = pref.getString(SharedKey.age) ?? '';
  }

  static void addUser() {
    userData.add({
      'Name': txtNameEditingController.text,
      'SurName': txtSurNameEditingController.text,
      'Age': txtAgeEditingController.text,
    });
  }

  static void clearUserdata() {
    txtNameEditingController.clear();
    txtSurNameEditingController.clear();
    txtAgeEditingController.clear();
  }

  static void toTapAdd() {
    txtNameEditingController.text = userData[selectedIndex]['Name'];
    txtSurNameEditingController.text = userData[selectedIndex]['SurName'];
    txtAgeEditingController.text = userData[selectedIndex]['Age'];
  }
}

class SharedKey {
  static String name = 'name';
  static String surName = 'surName';
  static String age = 'age';
}
