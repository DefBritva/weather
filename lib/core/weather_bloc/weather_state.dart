part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const WeatherState._();

  List<String> get weekdays {
    return mapOrNull(main: (state) => state.weekdays) ?? [];
  }

  int get currentLocation {
    return mapOrNull(main: (state) => state.currentLocation) ?? 0;
  }

  List<WeatherLocation> get locations {
    return mapOrNull(main: (state) => state.locations) ?? [];
  }

  const factory WeatherState.initial() = _Initial;
  const factory WeatherState.loading() = _Loading;
  const factory WeatherState.loadingSuccesful() = _LoadingSuccesful;
  const factory WeatherState.failure({required String message}) = _Failure;
  const factory WeatherState.locationOpenFromSearch() = _OpenFromSearch;
  const factory WeatherState.main({
    required List<WeatherLocation> locations,
    required List<String> weekdays,
    required int currentLocation,
  }) = _Main;
}
