import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/core/domain/entities/dio_singl.dart';

abstract class CitySearch {
  Future<List<String>> search(String name);
}

class CitySearchImpl implements CitySearch {
  @override
  Future<List<String>> search(String name) async {
    if (_isValide(name)) {
      try {
        final dio = DioSingleton.instance.dio;
        final response = await dio.get(
            'https://suggest-maps.yandex.ru/v1/suggest?apikey=e9fe79c7-2662-40a2-8166-fefa57f8296c&text=$name'
            '&lang=ru'
            '&results=10'
            '&types=locality');

        final json = response.data as Map<String, dynamic>;
        final cities = <String>[];
        for (var i in json['results']) {
          final city = i['title']['text'] as String;
          final subtitle = i['subtitle'] as Map<String, dynamic>?;
          final loc = subtitle != null ? subtitle['text'] as String : '';
          var spacer = '';
          if (loc.isNotEmpty) {
            spacer = ', ';
          } else {
            spacer = ' ';
          }
          cities.add('$city$spacer$loc');
        }

        return cities;
      } on DioException catch (e) {
        debugPrint(e.toString());
        return [];
      }
    } else {
      return [];
    }
  }

  bool _isValide(String name) {
    final pattern = RegExp(r'^[a-zA-Zа-яА-Я]+$', unicode: true);
    return pattern.hasMatch(name);
  }
}



// http://api.weatherapi.com/v1/search.json?key=<YOUR_API_KEY>&q=lond