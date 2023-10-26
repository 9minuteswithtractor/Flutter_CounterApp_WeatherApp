import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';

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

  void getLocation() => emit(AppCubitStates(
        location: 'Users  location',
        wasIncremented: false,
        wasReset: false,
        counterValue: state.counterValue,
      ));
}

class RangeValues {
  int minValue = 0;
  int maxValue = 10;
}

class LocationProvider {}
