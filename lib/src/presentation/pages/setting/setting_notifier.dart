import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/presentation/pages/setting/setting_state.dart';
import 'package:trip_tonic/src/usecase/get_app_version.dart';

part 'setting_notifier.g.dart';

@riverpod
class SettingNotifier extends AutoDisposeAsyncNotifier<SettingState> {
  SettingNotifier();

  @override
  Future<SettingState> build() async {
    final appVersion = await ref.read(getAppVersionProvider.future);
    return SettingState(
      appVersion: appVersion,
    );
  }
}
