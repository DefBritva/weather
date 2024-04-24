import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/data/dtos/weather_location/weather_location.dart';

part 'weather_response.freezed.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  const factory WeatherResponse({
    required WeatherLocationDTO location,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    final loc = WeatherLocationDTO.fromJson(json);
    return WeatherResponse(location: loc);
  }
}
