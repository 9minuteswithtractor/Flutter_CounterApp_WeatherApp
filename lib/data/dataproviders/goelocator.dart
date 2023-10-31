import 'package:freezed_and_cubit/data/models/location//location_model.dart';
import 'package:geocoding/geocoding.dart';
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

    // String usersLocationLatLong = 'lat: $latitude,  long: $longitude';

    // List<Placemark> placemark =
    //     await placemarkFromCoordinates(position.latitude, position.longitude);
    // print(placemark);
    //
    // // THIS NEEDS TO BE REFACTORED TO freezed deserialization
    // Placemark place = placemark[0];
    // String region = place.administrativeArea.toString();
    // String county = place.locality.toString();
    // String country = place.country.toString();
    // String address = '$region, $county, $country';
////////////////////////////////////////////////////////////////
    // json Serialized:
    // final serializedLocation = place.toJson();
    // json Deserialized:
    // final deserializedLocation =
    //     LocationModelFreezed.fromJson(serializedLocation);

    // print('LOCATION_DESERIALIZED: $');

    // LocationModelFreezed.fromJson(place as Map<String, dynamic>);
    // LocationModelFreezed location;
    // final county = deserializedLocation.administrativeArea;
    // final region = deserializedLocation.locality;
    // final country = deserializedLocation.country;

    // final userLocation = '$county, $region, $country';

    ////////////////////////////////////////////////////////////
    // print(userLocation);
    // return userLocation;
    String userLocation = '$latitude,$longitude';

    print(userLocation);
    return (userLocation.toString());
    // return (usersLocationLatLong.toString());
  }
}
