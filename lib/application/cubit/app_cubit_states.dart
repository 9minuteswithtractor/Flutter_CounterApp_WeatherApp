import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_cubit_states.freezed.dart';

@freezed
class AppCubitStates with _$AppCubitStates {
  const factory AppCubitStates({
    required bool wasIncremented,
    required bool wasReset,
    required int counterValue,
  }) = _AppCubitStates;
  factory AppCubitStates.initial() => const AppCubitStates(
      counterValue: 0, wasIncremented: false, wasReset: false);
}
