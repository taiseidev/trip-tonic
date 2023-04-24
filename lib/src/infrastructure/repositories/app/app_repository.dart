import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final appRepositoryProvider = Provider<AppRepository>(
  AppRepository.new,
);

class AppRepository {
  AppRepository(this.ref);
  final ProviderRef<AppRepository> ref;

  Future<String> getAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }
}
