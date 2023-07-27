import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottiesDemo extends StatefulWidget {
  const LottiesDemo({super.key});

  @override
  State<LottiesDemo> createState() => _LottiesDemoState();
}

class _LottiesDemoState extends State<LottiesDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/lottie/111.json'),
      ),
    );
  }
}