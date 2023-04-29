// helper/app_info_helper.dart
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final appVersionHelperProvider = Provider<AppVersionHelper>(
  (ref) => AppVersionHelper(),
);

class AppVersionHelper {
  Future<String> getAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }
}
