import 'package:flutter/material.dart';
import 'package:third_party/permission.dart';

class PermissionHendlerDemo extends StatefulWidget {
  const PermissionHendlerDemo({super.key});

  @override
  State<PermissionHendlerDemo> createState() => _PermissionHendlerDemoState();
}

class _PermissionHendlerDemoState extends State<PermissionHendlerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              onPressed: () async {
                await PermissionAsked.checkCemeraPermission();
                setState(() {});
              },
              child: const Text('Cemera Permission'),
            ),
            const SizedBox(
              height: 15,
            ),
            MaterialButton(
              onPressed: () async {
                await PermissionAsked.checkMicroPhonePermission();
                setState(() {});
              },
              child: const Text('MicroPhone Permission'),
            ),
            const SizedBox(
              height: 15,
            ),
            // MaterialButton(
            //   onPressed: () async {
            //     // await PermissionAsked.checkLocationPermission();
            //     setState(() {});
            //   },
            //   child: const Text('get Location'),
            // ),
          ],
        ),
      ),
    );
  }
}
