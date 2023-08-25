import 'package:flutter/material.dart';
import 'package:third_party/shared_demo/counter_shared.dart';

class SharedDemo extends StatefulWidget {
  const SharedDemo({super.key});

  @override
  State<SharedDemo> createState() => _SharedDemoState();
}

class _SharedDemoState extends State<SharedDemo> {
  int counter = CounterShared.getCounter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          counter.toString(),
          style: const TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          CounterShared.setCounter = ++counter;
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
