part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.started() = _Started;
  const factory WeatherEvent.getWeather() = _GetWeather;
  const factory WeatherEvent.nextLocation() = _NextLocation;
  const factory WeatherEvent.prevLocation() = _PrevLocation;
  const factory WeatherEvent.addLocation(String name) = _AddLocation;
  const factory WeatherEvent.removeLocation(int index) = _RemoveLocation;
  const factory WeatherEvent.openWeather({required int index}) = _OpenWeather;
}
