import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/resources/resources.dart';

void main() {
  test('animations assets test', () {
    expect(File(Animations.cloudThunderAnim).existsSync(), isTrue);
    expect(File(Animations.cloudsWindAnim).existsSync(), isTrue);
    expect(File(Animations.clouds).existsSync(), isTrue);
    expect(File(Animations.halfmoonAnim).existsSync(), isTrue);
    expect(File(Animations.halfmoonClousdAnim).existsSync(), isTrue);
    expect(File(Animations.halfmoonRainAnim).existsSync(), isTrue);
    expect(File(Animations.newSunAnim).existsSync(), isTrue);
    expect(File(Animations.rainySunAnim).existsSync(), isTrue);
    expect(File(Animations.snow1Anim).existsSync(), isTrue);
    expect(File(Animations.snowHalfmoonAnim).existsSync(), isTrue);
    expect(File(Animations.snowSunAnim).existsSync(), isTrue);
    expect(File(Animations.sunnyAnim).existsSync(), isTrue);
    expect(File(Animations.sunnyCloudsAnim).existsSync(), isTrue);
    expect(File(Animations.thunderAnim).existsSync(), isTrue);
    expect(File(Animations.thunderRainySunAnim).existsSync(), isTrue);
  });
}
