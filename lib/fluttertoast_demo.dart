import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToAstDemo extends StatefulWidget {
  const FlutterToAstDemo({super.key});

  @override
  State<FlutterToAstDemo> createState() => _FlutterToAstDemoState();
}

class _FlutterToAstDemoState extends State<FlutterToAstDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: 'mintan lathiya',
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.CENTER_LEFT,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.redAccent,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
              },
              child: const Text("show Toast message"),
            ),
          ],
        ),
      ),
    );
  }
}
