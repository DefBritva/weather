import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.appIcon).existsSync(), isTrue);
    expect(File(Images.blizzard).existsSync(), isTrue);
    expect(File(Images.clouds).existsSync(), isTrue);
    expect(File(Images.cloudy).existsSync(), isTrue);
    expect(File(Images.drizzle).existsSync(), isTrue);
    expect(File(Images.halfMoon).existsSync(), isTrue);
    expect(File(Images.heavyRain).existsSync(), isTrue);
    expect(File(Images.humidity).existsSync(), isTrue);
    expect(File(Images.moonCloud).existsSync(), isTrue);
    expect(File(Images.moonRain).existsSync(), isTrue);
    expect(File(Images.moonSnow).existsSync(), isTrue);
    expect(File(Images.rainySun).existsSync(), isTrue);
    expect(File(Images.show).existsSync(), isTrue);
    expect(File(Images.snow).existsSync(), isTrue);
    expect(File(Images.snowflake).existsSync(), isTrue);
    expect(File(Images.storm).existsSync(), isTrue);
    expect(File(Images.sun).existsSync(), isTrue);
    expect(File(Images.sunrise).existsSync(), isTrue);
    expect(File(Images.sunset_).existsSync(), isTrue);
    expect(File(Images.temperature8722352).existsSync(), isTrue);
    expect(File(Images.thermometer).existsSync(), isTrue);
    expect(File(Images.thunder).existsSync(), isTrue);
    expect(File(Images.webAppIcon).existsSync(), isTrue);
    expect(File(Images.wind).existsSync(), isTrue);
  });
}
