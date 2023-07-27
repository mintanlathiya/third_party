import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoIconDemo extends StatefulWidget {
  const CupertinoIconDemo({super.key});

  @override
  State<CupertinoIconDemo> createState() => _CupertinoIconDemoState();
}

class _CupertinoIconDemoState extends State<CupertinoIconDemo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(CupertinoIcons.ant_circle),
      ),
    );
  }
}
