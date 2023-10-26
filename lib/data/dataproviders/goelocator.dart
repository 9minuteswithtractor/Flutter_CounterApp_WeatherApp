import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

Future locationProvider() async {
  // String value = AppCubitStates.initial().location;
  LocationPermission permissionStatus = await Geolocator.requestPermission();

  if (permissionStatus == LocationPermission.denied) {
    print('The user denied permission to access their location.');
    return;
  }
  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low);
  print(position as String?);
  return (position);
}
