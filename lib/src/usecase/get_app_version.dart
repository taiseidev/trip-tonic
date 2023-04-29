import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/helpers/app_version_helper.dart';

part 'get_app_version.g.dart';

/// アプリのバージョンを取得する
@riverpod
Future<String> getAppVersion(GetAppVersionRef ref) async =>
    ref.read(appVersionHelperProvider).getAppVersion();
