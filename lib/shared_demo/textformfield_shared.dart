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

  static Future<SharedPreferences> get init async =>
      pref = await SharedPreferences.getInstance();

  static set setNameTextField(TextEditingController nameData) =>
      pref!.setString(SharedKey.name, txtNameEditingController.text);
  static set setSurNameTextField(TextEditingController surNameData) =>
      pref!.setString(SharedKey.surName, txtSurNameEditingController.text);
  static set setAgeTextField(TextEditingController ageData) =>
      pref!.setString(SharedKey.age, txtAgeEditingController.text);
  static set setUrlTextField(TextEditingController urlData) =>
      pref!.setString(SharedKey.url, txtUrlEditingController.text);
  static String get getNameTextField => pref!.getString(SharedKey.name) ?? '';
  static String get getSurNameTextField =>
      pref!.getString(SharedKey.surName) ?? '';
  static String get getAgeTextField => pref!.getString(SharedKey.age) ?? '';
  static String get getUrlTextField => pref!.getString(SharedKey.url) ?? '';

  static void addUser() {
    userData.add([
      txtNameEditingController.text,
      txtSurNameEditingController.text,
      txtAgeEditingController.text,
      txtUrlEditingController.text,
    ]);
  }

  static void clearUserdata() {
    txtNameEditingController.clear();
    txtSurNameEditingController.clear();
    txtAgeEditingController.clear();
    txtUrlEditingController.clear();
  }
}

class SharedKey {
  static String name = 'name';
  static String surName = 'surName';
  static String age = 'age';
  static String url = 'url';
}
