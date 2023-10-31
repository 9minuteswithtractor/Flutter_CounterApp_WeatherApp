import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_cubit_states.freezed.dart';
// part 'app_cubit_states.g.dart';

// TODO : need to come back to this and fix the Location api
@freezed
class AppCubitStates with _$AppCubitStates {
  const factory AppCubitStates({
    required bool wasIncremented,
    required bool wasReset,
    required int counterValue,
    @Default('press get_location') String temperature,
    @Default('press get_location') String location,
    @Default('Have a ☀️ day!') String message,
    @Default('') String city,
  }) = _AppCubitStates;

  factory AppCubitStates.initial() => const AppCubitStates(
      counterValue: 0,
      wasIncremented: false,
      wasReset: false,
      location: '',
      temperature: '');
}
