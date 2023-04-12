import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/infrastructure/data_source/api/app_dio/app_dio.dart';

final appDioProvider = Provider<Dio>(
  (_) => AppDio.getInstance(),
);
