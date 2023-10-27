// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      city: json['city'] as String,
      temperature: (json['temperature'] as num).toDouble(),
      windspeed: (json['windspeed'] as num).toDouble(),
      is_day: json['is_day'] as bool,
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'city': instance.city,
      'temperature': instance.temperature,
      'windspeed': instance.windspeed,
      'is_day': instance.is_day,
    };
