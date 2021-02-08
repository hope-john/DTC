import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:location/location.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
  LocationData currentLocation;
  
  
}




class MapSampleState extends State<MapSample> {

@override



  BitmapDescriptor pinLocationIcon;


  Completer<GoogleMapController> _controller = Completer();

  
  
  
  static final CameraPosition _kMe = CameraPosition(
      
      bearing: 192.8334901395799,
      target: LatLng(13.676082590421844, 100.60153454443841),
      
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
      mapType: MapType.normal,
      myLocationEnabled: true,
      myLocationButtonEnabled: true,
      initialCameraPosition: CameraPosition(
        target: LatLng(13.7650836, 100.5379664),
        
        zoom: 16,
      ),
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    ),
    floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToMe,
        label: Text('ตอนนี้อยู่ไหน'),
        icon: Icon(Icons.person),
      ),
    );
  }
  Future<void> _goToMe() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kMe));
  }
  }

