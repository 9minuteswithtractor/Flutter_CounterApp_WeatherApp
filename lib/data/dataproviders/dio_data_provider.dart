import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:the_counter_app/data/dataproviders/goelocator.dart';
import 'package:the_counter_app/data/models/weather/weather_model.dart';

import 'package:json_annotation/json_annotation.dart';

class WeatherApiClient {
  final dio = Dio();
  // 1) Fetching latitude and longitude

  Future getHttp() async {
    String userLocation = await LocationProvider().getCurrentLocation();
    List<String> bothLocationParameters = userLocation.split(',');
    String lat = bothLocationParameters.first;
    String lon = bothLocationParameters.last;

    String url =
        'https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&current_weather=true';

    Response response = await dio.get(url);

    if (response.statusCode == 200) {
      CurrentWeather apiResponse = CurrentWeather.fromJson(response.data);
      Map<String, dynamic> json = apiResponse.toJson();

      Map<String, dynamic> data = apiResponse.current_weather;

      double temperature = data['temperature'];

      print('$temperature °C'); // for DEBUG purposes
      return (temperature.toString()); // .toString() needed?
    } else {
      print(response.statusCode); // for DEBUG purposes
    }
  }
}
