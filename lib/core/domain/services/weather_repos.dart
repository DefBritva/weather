import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/core/data/response/weather_response.dart';
import 'package:weather_app/core/utils/dio_singl.dart';
import 'package:weather_app/core/domain/models/weather_location/weather_location.dart';

abstract class WeatherRepository {
  Future<Position> getLocation();
  Future<WeatherLocation> getLocalWeather();
  Future<WeatherLocation> getWetherFromLocation(
      {required String location, required String coords});
}

class WeatherRepositoryImpl implements WeatherRepository {
  final Dio _dio;
  WeatherRepositoryImpl({Dio? dio}) : _dio = dio ?? DioSingleton.instance.dio;
  @override
  Future<Position> getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  @override
  Future<WeatherLocation> getLocalWeather() async {
    final loc = await getLocation();
    final latitude = loc.latitude;
    final longitude = loc.longitude;
    final coordinates = '$latitude,$longitude';
    final dio = DioSingleton.instance.dio;
    final response = await dio
        .get('http://api.weatherapi.com/v1/forecast.json', queryParameters: {
      'key': '72c01051c1e94e9d973120435241401',
      'q': coordinates,
      'days': '3',
      'lang': 'ru'
    });
    final json = response.data as Map<String, dynamic>;
    final weatherResponse = WeatherResponse.fromJson(json);
    return weatherResponse.location.toDomain();
  }

  @override
  Future<WeatherLocation> getWetherFromLocation(
      {required String location, required String coords}) async {
    try {
      final dio = DioSingleton.instance.dio;

      final coordsList = coords.split(' ');
      final latitude = coordsList[1]; // Широта
      final longitude = coordsList[0]; // Долгота
      final coordinates = '$latitude,$longitude';

      final response = await dio
          .get('http://api.weatherapi.com/v1/forecast.json', queryParameters: {
        'key': '72c01051c1e94e9d973120435241401',
        'q': coordinates,
        'days': '3',
        'lang': 'ru'
      });
      final json = response.data as Map<String, dynamic>;

      final weatherResponse = WeatherResponse.fromJson(json);

      return weatherResponse.location.toDomain().copyWith(location: location);
    } on DioException catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
