import 'package:geolocator/geolocator.dart';

class LocationProvider {
  late double latitude;
  late double longitude;

  Future getCurrentLocation() async {
    LocationPermission permissionStatus = await Geolocator.requestPermission();

    if (permissionStatus == LocationPermission.denied) {
      print('The user denied permission to access their location.');
      return;
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);

    latitude = position.latitude;
    longitude = position.longitude;

    String userLocation = '$latitude,$longitude';

    print(userLocation);
    return (userLocation.toString());
  }
}
