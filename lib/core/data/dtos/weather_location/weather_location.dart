import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/data/dtos/astro/astro.dart';
import 'package:weather_app/core/data/dtos/current_weather/current_weather.dart';
import 'package:weather_app/core/data/dtos/weather_forecast/weather_forecast.dart';
import 'package:weather_app/core/data/dtos/weather_hourly/weather_hourly.dart';
import 'package:weather_app/core/domain/models/weather_location/weather_location.dart';

part 'weather_location.freezed.dart';

@freezed
class WeatherLocationDTO with _$WeatherLocationDTO {
  const WeatherLocationDTO._();

  const factory WeatherLocationDTO({
    required String location,
    required CurrentWeatherDTO currentWeather,
    required HourlyTempModelDTO tempModel,
    required List<WeatherForecastDTO> weatherForecast,
    required AstroWeatherDTO astroWeather,
    required int currentTime,
    required String localTime,
  }) = _WeatherLocationDTO;

  factory WeatherLocationDTO.fromJson(Map<String, dynamic> json) {
    final tempModel = HourlyTempModelDTO.fromJson(json);
    final current = CurrentWeatherDTO.fromJson(json);
    final astro = AstroWeatherDTO.fromJson(json);
    final days = json['forecast']['forecastday'] as List;
    final weatherForecast = <WeatherForecastDTO>[];
    for (var day in days) {
      weatherForecast.add(WeatherForecastDTO.fromJson(day));
    }

    final timeString = json['location']['localtime'] as String;

    final timeHour =
        timeString.substring(timeString.length - 5, timeString.length - 3);

    final localTime = timeString.substring(timeString.length - 5);

    return WeatherLocationDTO(
      location: json['location']['name'],
      currentWeather: current,
      tempModel: tempModel,
      weatherForecast: weatherForecast,
      currentTime: int.parse(timeHour),
      localTime: localTime,
      astroWeather: astro,
    );
  }

  WeatherLocation toDomain() {
    return WeatherLocation(
      location: location,
      currentWeather: currentWeather.toDomain(),
      tempModel: tempModel.toDomain(),
      weatherForecast: weatherForecast.map((e) => e.toDomain()).toList(),
      astroWeather: astroWeather.toDomain(),
      currentTime: currentTime,
      localTime: localTime,
    );
  }
}
