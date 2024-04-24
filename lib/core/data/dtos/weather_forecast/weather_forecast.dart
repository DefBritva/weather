import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/domain/models/weather_forecast/weather_forecast.dart';

part 'weather_forecast.freezed.dart';

@freezed
class WeatherForecastDTO with _$WeatherForecastDTO {
  const WeatherForecastDTO._();
  const factory WeatherForecastDTO({
    required String day,
    required int code,
    required double min,
    required double max,
    required double maxwindMph,
  }) = _WeatherForecastDTO;

  factory WeatherForecastDTO.fromJson(Map<String, dynamic> data) {
    final day = data['day'] as Map<String, dynamic>;
    final min = day['mintemp_c'] as double;
    final max = day['maxtemp_c'] as double;
    final code = day['condition']['code'];
    final maxwindMph = day['maxwind_mph'] as double;
    return WeatherForecastDTO(
      day: '',
      code: code,
      min: min,
      max: max,
      maxwindMph: maxwindMph,
    );
  }

  WeatherForecast toDomain() {
    return WeatherForecast(
      code: code,
      min: min.round(),
      max: max.round(),
      maxwindMph: maxwindMph,
    );
  }
}
