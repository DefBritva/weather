import 'package:weather_app/resources/resources.dart';

String dayImage(int code) {
  final String dayWeatherImage = switch (code) {
    1000 => Images.sun,
    1003 => Images.cloudy,
    >= 1006 && <= 1030 => Images.clouds,
    1135 => Images.clouds,
    1063 => Images.drizzle,
    1066 || 1114 || 1147 => Images.snow,
    1072 => Images.drizzle,
    1087 => Images.thunder,
    1117 => Images.blizzard,
    >= 1150 && <= 1168 => Images.drizzle,
    >= 1180 && <= 1183 => Images.rainySun,
    >= 1186 && <= 1201 => Images.heavyRain,
    >= 1204 && <= 1225 => Images.snow,
    1237 => Images.snowflake,
    >= 1240 && <= 1252 => Images.heavyRain,
    >= 1255 && <= 1258 => Images.snow,
    >= 1273 && <= 1282 => Images.thunder,
    _ => Images.cloudy,
  };

  return dayWeatherImage;
}

String nightImage(int code) {
  final String nightWeatherImage = switch (code) {
    1000 => Images.halfMoon,
    1003 => Images.moonCloud,
    >= 1006 && <= 1030 => Images.moonCloud,
    1135 => Images.moonCloud,
    1063 => Images.moonRain,
    1066 || 1114 || 1147 => Images.moonSnow,
    1072 => Images.moonRain,
    1087 => Images.thunder,
    1117 => Images.blizzard,
    >= 1150 && <= 1168 => Images.moonRain,
    >= 1180 && <= 1183 => Images.moonRain,
    >= 1186 && <= 1201 => Images.moonRain,
    >= 1204 && <= 1225 => Images.moonSnow,
    1237 => Images.moonSnow,
    >= 1240 && <= 1252 => Images.moonRain,
    >= 1255 && <= 1258 => Images.moonSnow,
    >= 1273 && <= 1282 => Images.thunder,
    _ => Images.halfMoon,
  };
  return nightWeatherImage;
}

String dayAnimation(int code) {
  final String dayWeatherAnimation = switch (code) {
    1000 => Animations.newSunAnim,
    1003 => Animations.clouds,
    >= 1006 && <= 1030 => Animations.clouds,
    1135 => Animations.clouds,
    1063 => Animations.rainySunAnim,
    1066 || 1114 || 1147 => Animations.snow1Anim,
    1072 => Animations.rainySunAnim,
    1087 => Animations.cloudThunderAnim,
    1117 => Animations.thunderAnim,
    >= 1150 && <= 1168 => Animations.rainySunAnim,
    >= 1180 && <= 1183 => Animations.rainySunAnim,
    >= 1186 && <= 1201 => Animations.rainySunAnim,
    >= 1204 && <= 1225 => Animations.snow1Anim,
    1237 => Animations.snow1Anim,
    >= 1240 && <= 1252 => Animations.halfmoonRainAnim,
    >= 1255 && <= 1258 => Animations.snow1Anim,
    >= 1273 && <= 1282 => Animations.cloudThunderAnim,
    _ => Animations.clouds,
  };

  return dayWeatherAnimation;
}

String nightAnimation(int code) {
  final String nightWeatherAnimation = switch (code) {
    1000 => Animations.halfmoonAnim,
    1003 => Animations.halfmoonClousdAnim,
    >= 1006 && <= 1030 => Animations.halfmoonClousdAnim,
    1135 => Animations.halfmoonClousdAnim,
    1063 => Animations.halfmoonRainAnim,
    1066 || 1114 || 1147 => Animations.snowHalfmoonAnim,
    1072 => Animations.halfmoonClousdAnim,
    1087 => Animations.cloudThunderAnim,
    1117 => Animations.thunderAnim,
    >= 1150 && <= 1168 => Animations.halfmoonRainAnim,
    >= 1180 && <= 1183 => Animations.halfmoonRainAnim,
    >= 1186 && <= 1201 => Animations.halfmoonRainAnim,
    >= 1204 && <= 1225 => Animations.snowHalfmoonAnim,
    1237 => Animations.snowHalfmoonAnim,
    >= 1240 && <= 1252 => Animations.halfmoonRainAnim,
    >= 1255 && <= 1258 => Animations.snowHalfmoonAnim,
    >= 1273 && <= 1282 => Animations.cloudThunderAnim,
    _ => Animations.halfmoonClousdAnim,
  };

  return nightWeatherAnimation;
}
