import 'package:freezed_annotation/freezed_annotation.dart';
part 'current_weather.freezed.dart';

@freezed
class CurrentWeather with _$CurrentWeather {
  const CurrentWeather._();

  const factory CurrentWeather({
    required int temp,
    required String description,
    required int weatherConditionCode,
    required DayTimes dayTimes,
    required int windMps,
    required int feelslike,
    required int visibilityKm,
    required int humidity,
  }) = _CurrentWeather;
}

enum DayTimes {
  day,
  night,
}
