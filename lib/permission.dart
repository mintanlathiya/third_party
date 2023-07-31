import 'package:permission_handler/permission_handler.dart';

class PermissionAsked {
  static Future<void> checkCemeraPermission() async {
    var status = await Permission.camera.status;
    if (!status.isGranted) {
      await Permission.camera.request();
    }
  }

  static Future<void> checkMicroPhonePermission() async {
    var status = await Permission.microphone.status;
    if (!status.isGranted) {
      await Permission.microphone.request();
    }

    if (status == PermissionStatus.permanentlyDenied) {
      openAppSettings();
    }
  }

  static Future<void> checkLocationPermission() async {
    var status = await Permission.location.status;
    if (!status.isGranted) {
      await Permission.location.request();
    }
  }
}
