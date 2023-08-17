import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrenceExDemo extends StatefulWidget {
  const SharedPrefrenceExDemo({super.key});

  @override
  State<SharedPrefrenceExDemo> createState() => _SharedPrefrenceExDemoState();
}

class _SharedPrefrenceExDemoState extends State<SharedPrefrenceExDemo> {
  String nameSp = '';
  String surNameSp = '';
  String ageSp = '';

  SharedPreferences? pref;
  final TextEditingController txtNameEditingController =
      TextEditingController();
  final TextEditingController txtSurNameEditingController =
      TextEditingController();
  final TextEditingController txtAgeEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    getValue();
  }

  void getValue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    nameSp = pref.getString('name') ?? '';
    surNameSp = pref.getString('surName') ?? '';
    ageSp = pref.getString('age') ?? '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: txtNameEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Name',
                  labelText: 'Name',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: txtSurNameEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'SurName',
                  labelText: 'SurName',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: txtAgeEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Age',
                  labelText: 'Age',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              MaterialButton(
                onPressed: () async {
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  pref.setString('name', txtNameEditingController.text);
                  pref.setString('surName', txtSurNameEditingController.text);
                  pref.setString('age', txtAgeEditingController.text);
                  nameSp = pref.getString('name') ?? '';
                  surNameSp = pref.getString('surName') ?? '';
                  ageSp = pref.getString('age') ?? '';
                  //TextFormFieldShard.addUser();
                  //log(TextFormFieldShard.userData.toString());
                  setState(() {});
                },
                child: const Text('Submit'),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name :  $nameSp'),
                      Text('SurName :  $surNameSp'),
                      Text('Age :  $ageSp'),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
