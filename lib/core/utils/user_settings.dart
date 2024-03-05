import 'package:flutter/material.dart';

class UserSettings {
  static late final double height;
  static late final double width;
  static bool isInizialized = false;

  static void setUserSize(BuildContext context) {
    if (!isInizialized) {
      final size = MediaQuery.of(context).size;
      height = size.height;
      width = size.width;
      isInizialized = true;
    }
  }
}
