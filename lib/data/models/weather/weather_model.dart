import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class CurrentWeather with _$CurrentWeather {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CurrentWeather({
    required Map<String, dynamic> current_weather,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}

/*
   {latitude: 56.913456, longitude: 24.382553,
  generationtime_ms: 0.13303756713867188, utc_offset_seconds: 0,
  timezone: GMT, timezone_abbreviation: GMT, elevation: 7.0,
           current_weather_units: {time: iso8601, interval: seconds, temperature: °C, windspeed: km/h,
    winddirection: °, is_day: , weathercode: wmo code},
           current_weather: {time: 2023-10-31T07:15, interval: 900,
      temperature: 7.4, windspeed: 13.0, winddirection: 112, is_day: 1, weathercode: 3}}
*/
