import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/usecase/app_user/fetch_news_setting.dart';

part 'setting_state.freezed.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default('') String appVersion,
    NewsSetting? newsSetting,
  }) = _SettingState;
  const SettingState._();
}
