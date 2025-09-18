import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatelessWidget {
  final LatLng location;

  const MapView({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(target: location, zoom: 16),
      markers: {
        Marker(
          markerId: const MarkerId("selected-location"),
          position: location,
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        )
      },
      mapType: MapType.normal,
      myLocationButtonEnabled: false,
      zoomControlsEnabled: true,

    );
  }
}
