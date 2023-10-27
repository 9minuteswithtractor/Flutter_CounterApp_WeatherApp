import 'package:dio/dio.dart';
import 'package:freezed_and_cubit/data/dataproviders/env.dart';
import 'package:freezed_and_cubit/data/dataproviders/goelocator.dart';

class WeatherApi {
  final dio = Dio();

  String data = LocationProvider().getCurrentLocation().toString();

  Future getHttp() async {
    final response = await dio.get(
        'https://api.open-meteo.com/v1/forecast?latitude=56.9241&longitude=24.3833&hourly=temperature_2m&forecast_days=1');

    if (response.statusCode == 200) {
      try {
        print('code: ${response.statusCode} OK');
        print('data: ${response.data}');
        return response.data;
      } catch (e) {
        throw ' err: Looks like this page is not accessible at the moment ...';
      }
    } else {
      print(response.statusCode);
    }
  }
}
