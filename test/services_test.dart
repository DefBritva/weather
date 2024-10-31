import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/core/domain/services/city_search.dart';
import 'package:weather_app/core/domain/services/weather_repos.dart';

class MockDio extends Mock implements Dio {}

final testCase1 = <String, dynamic>{
  'response': Response(
    statusCode: 200,
    data: '',
    requestOptions: RequestOptions(path: ''),
  ),
  'matcher': ''
};
final testCase2 = <String, dynamic>{
  'response': Response(
    statusCode: 200,
    data: '',
    requestOptions: RequestOptions(path: ''),
  ),
  'matcher': ''
};
final testCase3 = <String, dynamic>{
  'response': Response(
    statusCode: 200,
    data: '',
    requestOptions: RequestOptions(path: ''),
  ),
  'matcher': ''
};
final testCase4 = <String, dynamic>{
  'response': Response(
    statusCode: 400,
    data: '',
    requestOptions: RequestOptions(path: ''),
  ),
  'matcher': ''
};
final testCase5 = <String, dynamic>{
  'response': Response(
    statusCode: 500,
    data: '',
    requestOptions: RequestOptions(path: ''),
  ),
  'matcher': ''
};

void main() {
  group('weather_repos test', () {
    late MockDio mockDio;
    late WeatherRepositoryImpl weatherRep;
    setUp(() {
      mockDio = MockDio();
      weatherRep = WeatherRepositoryImpl(dio: mockDio);
    });

    test('1', () {});
    test('2', () {});
    test('3', () {});
    test('4', () {});
    test('5', () {});
  });

  group('city_search test', () {
    late MockDio mockDio;
    late CitySearchImpl cityRep;
    setUp(() {
      mockDio = MockDio();
      cityRep = CitySearchImpl(dio: mockDio);
    });
    test('1', () {});
    test('2', () {});
    test('3', () {});
    test('4', () {});
    test('5', () {});
  });
}
