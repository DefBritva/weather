import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/domain/models/astro/astro.dart';

part 'astro.freezed.dart';

@unfreezed
class AstroWeatherDTO with _$AstroWeatherDTO {
  const AstroWeatherDTO._();
  factory AstroWeatherDTO({
    required String sunrise,
    required String sunset,
  }) = _AstroWeatherDTO;

  factory AstroWeatherDTO.fromJson(Map<String, dynamic> json) {
    final astro = json['forecast']['forecastday'][0]['astro'];
    var sunrise = astro['sunrise'] as String;
    var sunset = astro['sunset'] as String;

    return AstroWeatherDTO(sunrise: sunrise, sunset: sunset);
  }

  AstroWeather toDomain() {
    if (sunrise.contains('12:00 AM')) {
      sunrise = '00:00';
    } else if (sunrise.contains('12:00 PM')) {
      sunrise = '12:00';
    } else if (sunrise.contains('PM')) {
      const noon = 12;
      sunrise = '${noon + int.parse(sunrise.substring(0, 2))}';
    } else {
      sunrise = sunrise.substring(0, 5);
    }
    if (sunset.contains('12:00 AM')) {
      sunset = '00:00';
    } else if (sunset.contains('12:00 PM')) {
      sunset = '12:00';
    } else if (sunset.contains('PM')) {
      const noon = 12;
      sunset =
          '${noon + int.parse(sunset.substring(0, 2))}${sunset.substring(2, 5)}';
    } else {
      sunset = sunset.substring(0, 5);
    }
    return AstroWeather(sunrise: sunrise, sunset: sunset);
  }
}
