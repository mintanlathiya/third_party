import 'package:flutter/material.dart';
import 'package:third_party/shared_demo/counter_shared.dart';

class SharedDemo extends StatefulWidget {
  const SharedDemo({super.key});

  @override
  State<SharedDemo> createState() => _SharedDemoState();
}

class _SharedDemoState extends State<SharedDemo> {
  int count = CounterShared.getCounter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          count.toString(),
          style: const TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          CounterShared.setCounter = ++count;
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
