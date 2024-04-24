import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/domain/models/current_weather/current_weather.dart';
part 'current_weather.freezed.dart';

@unfreezed
class CurrentWeatherDTO with _$CurrentWeatherDTO {
  const CurrentWeatherDTO._();

  factory CurrentWeatherDTO({
    required double temp,
    required String description,
    required int weatherConditionCode,
    required int isDay,
    required double windKph,
    required double feelslike,
    required double visibilityKm,
    required int humidity, // percent's (0-100)
  }) = _CurrentWeatherDTO;

  factory CurrentWeatherDTO.fromJson(Map<String, dynamic> json) {
    final condition = json['current']['condition'] as Map<String, dynamic>;
    final description = condition['text'] as String;
    final code = condition['code'] as int;

    final current = json['current'] as Map<String, dynamic>;
    final temp = current['temp_c'] as double;
    final isDay = current['is_day'] as int;
    final windKph = current['wind_kph'] as double;
    final feelslike = current['feelslike_c'] as double;
    final visibilityKm = current['vis_km'] as double;
    final humidity = current['humidity'] as int;
    return CurrentWeatherDTO(
      temp: temp,
      description: description,
      weatherConditionCode: code,
      isDay: isDay,
      windKph: windKph,
      feelslike: feelslike,
      visibilityKm: visibilityKm,
      humidity: humidity,
    );
  }

  CurrentWeather toDomain() {
    final dayTimes = isDay == 1 ? DayTimes.day : DayTimes.night;
    final windMps = (windKph * 1000 / 3600).round();
    return CurrentWeather(
      temp: temp.round(),
      description: description,
      weatherConditionCode: weatherConditionCode,
      dayTimes: dayTimes,
      windMps: windMps,
      feelslike: feelslike.round(),
      visibilityKm: visibilityKm.round(),
      humidity: humidity,
    );
  }
}
