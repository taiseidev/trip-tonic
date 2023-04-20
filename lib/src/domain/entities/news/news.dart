import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/domain/entities/announcement/announcement_list.dart';
import 'package:trip_tonic/src/domain/entities/notification/notification_list.dart';

part 'news.freezed.dart';

@freezed
class News with _$News {
  const factory News({
    // お知らせ一覧
    required NotificationList notificationList,

    // 運営からのお知らせ一覧
    required AnnouncementList announcementList,
  }) = _News;

  const News._();
}
