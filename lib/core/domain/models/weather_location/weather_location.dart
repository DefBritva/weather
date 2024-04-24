import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/domain/models/astro/astro.dart';
import 'package:weather_app/core/domain/models/current_weather/current_weather.dart';
import 'package:weather_app/core/domain/models/weather_forecast/weather_forecast.dart';
import 'package:weather_app/core/domain/models/weather_hourly/weather_hourly.dart';

part 'weather_location.freezed.dart';

@freezed
class WeatherLocation with _$WeatherLocation {
  const WeatherLocation._();

  const factory WeatherLocation({
    required String location,
    required CurrentWeather currentWeather,
    required HourlyTempModel tempModel,
    required List<WeatherForecast> weatherForecast,
    required AstroWeather astroWeather,
    required int currentTime,
    required String localTime,
  }) = _WeatherLocation;
}
