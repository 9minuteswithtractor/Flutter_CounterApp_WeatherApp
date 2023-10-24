import 'package:bloc/bloc.dart';

import 'app_cubit_states.dart';

class CounterCubit extends Cubit<AppCubitStates> {
  CounterCubit()
      : super(const AppCubitStates(
            counterValue: 0, wasIncremented: false, wasReset: false));

  void incrementValue() {
    if (state.counterValue < RangeValues().maxValue) {
      return emit(AppCubitStates(
          counterValue: state.counterValue + 1,
          wasIncremented: true,
          wasReset: false));
    }
  }

  void decrementValue() {
    if (state.counterValue > RangeValues().minValue) {
      return emit(AppCubitStates(
          counterValue: state.counterValue - 1,
          wasIncremented: false,
          wasReset: false));
    }
  }

  void resetValue() => emit(const AppCubitStates(
      counterValue: 0, wasIncremented: false, wasReset: true));
}

class RangeValues {
  int minValue = 0;
  int maxValue = 10;
}

class Location {
  String defaultLocation = 'User location';
}
