import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:freezed_and_cubit/data/dataproviders/env.dart';
import 'package:freezed_and_cubit/data/dataproviders/goelocator.dart';
import 'package:freezed_and_cubit/data/models/weather/weather_model.dart';
import 'package:json_annotation/json_annotation.dart';

class WeatherApiClient {
  final dio = Dio();
  String url =
      'https://api.open-meteo.com/v1/forecast?latitude=56.91&longitude=24.38&current_weather=true';

  Future getHttp() async {
    Response response = await dio.get(url);

    if (response.statusCode == 200) {
      final parsedData = await jsonDecode(response.data.toString());

      final weather = WeatherModel.fromJson(parsedData);
      print(weather);
      return (weather);
      // final weather = await response.data;
      // final temperature = await weather['current_weather']['temperature'];
      // print(temperature.toString());
      // return (temperature.toString());
      // var temperature = jsonDecode(data)['current_weather']['temperature'];
      // var temperature = response.data['current_weather']['temperature'];
      // print('code: ${response.statusCode} OK');
      // print('data: $temperature');
      // return (temperature.toString());
    } else {
      print(response.statusCode);
    }
  }
}
