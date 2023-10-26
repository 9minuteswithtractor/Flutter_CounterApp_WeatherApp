import 'package:dio/dio.dart';

import '../models/weather_model.dart';
import 'package:dio/dio.dart';

// class WeatherApiClient {
//   Future<WeatherModel> request() async {
//     Response response = await Dio().get()
//   }
// }

// void main() async {
//   final dio = Dio();
//
//   // dio.options.headers = {
//   //   'accept': 'application/json',
//   //   'X-RapidAPI-Key': '',
//   //   'X-RapidAPI-Host': 'https://catfact.ninja/fact'
//   // };
//
//   try {
//     final response = await dio.get('https://catfact.ninja/fact');
//
//     // Print the response.
//     print(response.data);
//   } on DioError catch (error) {
//     // Handle the error.
//     print(error.message);
//   }
//   // void getHttp() async {
//   //   final response = await dio.get(
//   //       'https://matchilling-chuck-norris-jokes-v1.p.rapidapi.com/jokes/random');
//   //   print(response);
//   // }
//   //
//   // getHttp();
// }
