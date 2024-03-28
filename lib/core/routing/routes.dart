import 'package:flutter/material.dart';
import 'package:weather/features/weather/weather.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/domain/services/city_search.dart';
import 'package:weather/features/search/bloc/search_bloc.dart';
import 'package:weather/features/search/search_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String search = '/search';
  static const String map = '/map';

  static Route<dynamic> generateRote(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (context) => const WeatherPage(),
        );
      case search:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) =>
                      SearchBloc(citySearch: context.read<CitySearchImpl>()),
                  child: const SearchPage(),
                ));

      case map:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              backgroundColor: Colors.red,
              body: Text('error'),
            );
          },
        );
    }
  }
}
