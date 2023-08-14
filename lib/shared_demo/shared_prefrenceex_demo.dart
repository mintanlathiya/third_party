import 'package:flutter/material.dart';
import 'package:third_party/shared_demo/textformfield_shared.dart';

class SharedPrefrenceExDemo extends StatefulWidget {
  const SharedPrefrenceExDemo({super.key});

  @override
  State<SharedPrefrenceExDemo> createState() => _SharedPrefrenceExDemoState();
}

class _SharedPrefrenceExDemoState extends State<SharedPrefrenceExDemo> {
  @override
  void initState() {
    super.initState();
    TextFormFieldShard.getValue();
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
                controller: TextFormFieldShard.txtNameEditingController,
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
                controller: TextFormFieldShard.txtSurNameEditingController,
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
                controller: TextFormFieldShard.txtAgeEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Age',
                  labelText: 'Age',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 5,
              ),
              MaterialButton(
                onPressed: () {
                  TextFormFieldShard.setValue();
                  setState(() {});
                },
                child: const Text('Submit'),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Name :  ${TextFormFieldShard.txtNameEditingController.text}'),
                      Text(
                          'SurName :  ${TextFormFieldShard.txtSurNameEditingController.text}'),
                      Text(
                          'Age :  ${TextFormFieldShard.txtAgeEditingController.text}'),
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
