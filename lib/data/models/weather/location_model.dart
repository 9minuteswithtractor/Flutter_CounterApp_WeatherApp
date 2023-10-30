import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModelFreezed with _$LocationModelFreezed {
  // FOR SNAKE_CASE_KEY_VALUE
  // @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LocationModelFreezed({
    required String administrativeArea,
    required String locality,
    required String country,
  }) = _LocationModelFreezed;

  factory LocationModelFreezed.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFreezedFromJson(json);
}

/// JUST TO SEE THE KEYS ...
///
// Placemark place = placemark[0];
// String region = place.administrativeArea.toString();
// String county = place.locality.toString();
// String country = place.country.toString();
// String address = '$region, $county, $country';
