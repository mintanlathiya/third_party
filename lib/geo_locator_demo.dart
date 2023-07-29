import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class GeoLocatorDemoUi extends StatefulWidget {
  const GeoLocatorDemoUi({super.key});

  @override
  State<GeoLocatorDemoUi> createState() => _GeoLocatorDemoUiState();
}

class _GeoLocatorDemoUiState extends State<GeoLocatorDemoUi> {
  void getCurrentPosition() async {
    //permission
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      print('Permissions not given');
      // LocationPermission asked = await Geolocator.requestPermission();
    } else {
      Position currentPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      print('Longitude: ${currentPosition.longitude}');
      print('Lotitude: ${currentPosition.latitude}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              getCurrentPosition();
            },
            child: const Text('Get Current Location')),
      ),
    );
  }
}
