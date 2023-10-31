import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:freezed_and_cubit/data/dataproviders/env.dart';
import 'package:freezed_and_cubit/data/dataproviders/goelocator.dart';

import 'package:json_annotation/json_annotation.dart';

class WeatherApiClient {
  final dio = Dio();
  // 1) Fetching latitude and longitude

  String url =
      'https://api.open-meteo.com/v1/forecast?latitude=23&longitude=23&current_weather=true';

  Future getHttp() async {
    Response response = await dio.get(url);

    if (response.statusCode == 200) {
      // TODO: NEEDS TO BE REFACTORED ////////////////////////////////

      ////////////////////////////////////////////////////////////////

      // 2) Fetching latitude and longitude

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
