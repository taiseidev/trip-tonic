enum SharedPreferencesKey {
  // 前回のログイン方法
  previousLoginMethod,
}

extension SharedPreferencesKeyExtension on SharedPreferencesKey {
  String get value => name;
}
