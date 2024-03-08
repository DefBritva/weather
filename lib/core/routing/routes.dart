import 'package:flutter/material.dart';
import 'package:weather/features/weather/weather.dart';

class AppRoutes {
  static const String home = '/';

  static Route<dynamic> generateRote(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (context) => const WeatherPage(),
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
