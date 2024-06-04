import 'package:dio/dio.dart';

class DioSingleton {
  DioSingleton._();
  final Dio dio = Dio();
  static final DioSingleton instance = DioSingleton._();
}
