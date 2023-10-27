import 'package:geolocator/geolocator.dart';

class LocationProvider {
  late double latitude;
  late double longitude;

  Future getCurrentLocation() async {
    // String value = AppCubitStates.initial().location;
    LocationPermission permissionStatus = await Geolocator.requestPermission();

    if (permissionStatus == LocationPermission.denied) {
      print('The user denied permission to access their location.');
      return;
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);

    latitude = position.latitude;
    longitude = position.longitude;
    String usersLocation = 'latitude:\n $latitude,\n longitude:\n $longitude';
    print(position);
    return (usersLocation);
  }
}
