import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'package:mobikad/screens/map_screen.dart';
import 'package:mobikad/components/button_custom.dart';

class LocationPermissionRequest extends StatelessWidget {
  const LocationPermissionRequest({Key? key}) : super(key: key);

  Future<void> _checkAndRequestLocation(BuildContext context) async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Location permission denied')),
        );
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
              'Location permission is permanently denied. Please enable it in settings.'),
        ),
      );
      await Geolocator.openAppSettings();
      return;
    }

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MapScreen()));
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 100,
                color: Colors.grey[800],
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'Please turn on location to use this app',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              const SizedBox(height: 80),
              ButtonCustom(
                onTap: () => _checkAndRequestLocation(context),
                text: "Turn on Location",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
