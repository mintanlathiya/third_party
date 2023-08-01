import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

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
                var status = await Permission.camera.status;
                if (!status.isGranted) {
                  await Permission.camera.request();
                }
                if (await Permission.location.isRestricted) {}
                // await PermissionAsked.checkCemeraPermission();
                // setState(() {});
              },
              child: const Text('Cemera Permission'),
            ),
            const SizedBox(
              height: 15,
            ),
            MaterialButton(
              onPressed: () async {
                var status = await Permission.location.status;
                if (!status.isGranted) {
                  await Permission.location.request();
                }
                if (await Permission
                    .locationWhenInUse.serviceStatus.isEnabled) {}
                //await PermissionAsked.checkMicroPhonePermission();
                // setState(() {});
              },
              child: const Text('location Permission'),
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
