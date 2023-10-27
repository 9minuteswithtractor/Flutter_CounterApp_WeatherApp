import 'package:dio/dio.dart';
import 'package:freezed_and_cubit/data/dataproviders/goelocator.dart';
import 'package:freezed_and_cubit/data/dataproviders/env.dart';

class WeatherApi {
  final dio = Dio();
  final String API_KEY = weatherAPI;

  Future getHttp() async {
    final response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid=$API_KEY');
    print(response);
    getHttp();
    return response;
  }
}
