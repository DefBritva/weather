import 'package:flutter/material.dart';
import 'package:weather_app/core/routing/routes.dart';

class AppNavigation {
  static void goSearch(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.search);
  }

  static void goMap(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.map);
  }
}
