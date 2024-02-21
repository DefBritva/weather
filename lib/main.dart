import 'package:flutter/material.dart';
import 'package:weather/core/domain/services/weather_repos.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final repos = WeatherRepositoryImpl();
  await repos.getLocalWeather();
  await repos.getWetherFromLocation(
      coords: '37.6155600 55.7522200', location: 'Москва');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
