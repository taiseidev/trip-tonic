import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/repositories/app/app_repository.dart';

part 'get_app_version.g.dart';

@riverpod
Future<String> getAppVersion(GetAppVersionRef ref) async =>
    ref.read(appRepositoryProvider).getAppVersion();
