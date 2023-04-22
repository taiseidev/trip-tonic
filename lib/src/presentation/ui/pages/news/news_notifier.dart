// AsyncNotifierを使うためのAsyncNotifierProviderを定義する.
import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/news/news.dart';
import 'package:trip_tonic/src/usecase/news/fetch_news_list.dart';
import 'package:trip_tonic/src/usecase/news/notification/update_notification_read_state.dart';

final newsNotifierProvider =
    AsyncNotifierProvider.autoDispose<NewsNotifier, News>(NewsNotifier.new);

class NewsNotifier extends AutoDisposeAsyncNotifier<News> {
  @override
  FutureOr<News> build() async => await ref.watch(fetchNewsListProvider.future);

  Future<void> readNotification({required String notificationId}) async {
    state = await AsyncValue.guard(() async {
      unawaited(
        ref.read(updateNotificationReadStateProvider(notificationId))(),
      );

      return state.value!.readNotification(notificationId: notificationId);
    });
  }
}
