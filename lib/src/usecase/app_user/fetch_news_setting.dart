import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_news_setting.g.dart';

/// ユーザの通知設定を取得する
@riverpod
Future<NewsSetting> fetchNewsSetting(FetchNewsSettingRef ref) async {
  return NewsSetting(
    isPushNotification: false,
    isPushAnnouncement: true,
  );
}

class NewsSetting {
  NewsSetting({
    required this.isPushNotification,
    required this.isPushAnnouncement,
  });

  final bool isPushNotification;
  final bool isPushAnnouncement;
}
