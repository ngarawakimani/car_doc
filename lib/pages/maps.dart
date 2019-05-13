import 'dart:async';

import 'package:flutter/material.dart';
import '../utils/Drawer.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CarMap extends StatelessWidget {
  
  Completer<GoogleMapController> _controller = new Completer();

  static const LatLng _center = const LatLng(-1.310500, 36.914661);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Car Doc")),
      body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
      ),
      drawer: carDrawer(context),
    );
  }
}