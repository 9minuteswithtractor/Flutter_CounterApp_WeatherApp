import 'package:freezed_and_cubit/data/models/weather/weather_model.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class LocationProvider {
  late double latitude;
  late double longitude;
  late String location;

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

    List<Placemark> placemark =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    print(placemark);

    String usersLocationLatLong = 'lat: $latitude,  long: $longitude';

    // THIS NEEDS TO BE REFACTORED TO freezed deserialization
    Placemark place = placemark[0];
    String region = place.administrativeArea.toString();
    String county = place.locality.toString();
    String country = place.country.toString();
    String address = '$region, $county, $country';
    ////////////////////////////////////////////////////////////
    print({address});
    return address;

    // return (usersLocationLatLong.toString());
  }
}
