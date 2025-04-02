// ignore_for_file: constant_identifier_names

import 'package:dio/dio.dart';

class DioClient {
  static const BASE_URL = 'http://dataservice.accuweather.com/';
  static const API_KEY = 'LjjK5D1vgPsj2tm32RWABRaMZmAuL1nV';
  static const TIMEOUT_DURATION = 30;

  static Dio createDio() {
    return Dio(
      BaseOptions(
          baseUrl: BASE_URL,
          connectTimeout: const Duration(seconds: TIMEOUT_DURATION),
          receiveTimeout: const Duration(seconds: TIMEOUT_DURATION),
          responseType: ResponseType.json,
          queryParameters: {
            'language': 'ru',
            'apikey': API_KEY,
          }),
    );
  }
}
