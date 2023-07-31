import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class FlutterNativeSplashDemoUi extends StatefulWidget {
  const FlutterNativeSplashDemoUi({super.key});

  @override
  State<FlutterNativeSplashDemoUi> createState() =>
      _FlutterNativeSplashDemoUiState();
}

class _FlutterNativeSplashDemoUiState extends State<FlutterNativeSplashDemoUi> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void _incrementCounter() {
    _counter++;
    setState(() {});
  }

  void initialization() async {
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
