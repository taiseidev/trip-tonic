import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';

// ignore: prefer_mixin
class AppDio with DioMixin implements Dio {
  AppDio._([BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: 'https://asia-northeast1-trip-tonic.cloudfunctions.net/',
      contentType: 'application/json',
      connectTimeout: const Duration(milliseconds: 300 * 1000),
      sendTimeout: const Duration(milliseconds: 300 * 1000),
      receiveTimeout: const Duration(milliseconds: 300 * 1000),
    );

    this.options = options;

    if (kDebugMode) {
      interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    }

    httpClientAdapter = IOHttpClientAdapter();
  }

  static Dio getInstance() => AppDio._();
}
