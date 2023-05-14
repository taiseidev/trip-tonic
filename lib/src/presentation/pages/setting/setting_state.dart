import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_state.freezed.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default('') String appVersion,
  }) = _SettingState;
  const SettingState._();
}
