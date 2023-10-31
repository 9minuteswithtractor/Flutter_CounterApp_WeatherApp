import 'package:bloc/bloc.dart';
import 'package:freezed_and_cubit/data/dataproviders/dio_data_provider.dart';
import 'package:geolocator/geolocator.dart';

import '../../data/dataproviders/goelocator.dart';
import 'app_cubit_states.dart';

class CounterCubit extends Cubit<AppCubitStates> {
  CounterCubit()
      : super(
          const AppCubitStates(
            counterValue: 0,
            wasIncremented: false,
            wasReset: false,
            // location: LocationProvider().getCurrentLocation().toString() => promise
            location: 'LOCATION',
            temperature: 'WEATHER',
          ),
        ) {
    // TODO: call methods()
  }

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

  void resetValue() => emit(
        AppCubitStates(
          counterValue: 0,
          wasIncremented: false,
          wasReset: true,
          temperature: state.temperature,
          location: state.location,
        ),
      );

  Future getLocation() async => emit(AppCubitStates(
        location: await LocationProvider().getCurrentLocation(),
        wasIncremented: state.wasIncremented,
        wasReset: state.wasReset,
        counterValue: state.counterValue,
      ));

  Future getWeather() async => emit(
        AppCubitStates(
          temperature: await WeatherApiClient().getHttp(),
          wasIncremented: false,
          wasReset: false,
          counterValue: state.counterValue,
        ),
      );
}

class RangeValues {
  int minValue = 0;
  int maxValue = 10;
}

// String data = locationProvider().toString();
